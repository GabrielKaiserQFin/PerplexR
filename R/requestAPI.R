#' Get Large Language Model Completions Endpoint
#'
#' @param prompt The prompt to generate completions for.
#' @param PERPLEXITY_API_KEY PERPLEXITY API key.
#' @param modelSelection model choice. Default is mistral-7b-instruct.
#' @param systemRole Role for model. Default is: "You are a helpful assistant
#' with extensive knowledge of R programming."
#' @param maxTokens The maximum integer of completion tokens returned by API.
#' @param temperature The amount of randomness in the response,
#' valued between 0 inclusive and 2 exclusive. Higher values are more random,
#' and lower values are more deterministic. Set either temperature or top_p.
#' @param top_p Nucleus sampling threshold, valued between 0 and 1 inclusive.
#' @param top_k The number of tokens to keep for highest top-k filtering,
#' specified as an integer between 0 and 2048 inclusive.
#' If set to 0, top-k filtering is disabled.
#' @param presence_penalty A value between -2.0 and 2.0.
#' Positive values penalize new tokens based on whether they appear in the text
#' so far, increasing the model's likelihood to talk about new topics.
#' Incompatible with frequency_penalty.
#' @param frequency_penalty A multiplicative penalty greater than 0.
#' Values greater than 1.0 penalize new tokens based on their existing
#' frequency in the text so far, decreasing the model's likelihood to repeat
#' the same line verbatim. A value of 1.0 means no penalty.
#' @param proxy Default value is NULL.
#'
#' @importFrom httr add_headers content content_type_json POST use_proxy
#' @importFrom jsonlite toJSON
#'
API_Request <- function(prompt,
                        PERPLEXITY_API_KEY = PERPLEXITY_API_KEY,
                        modelSelection = modelSelection,
                        systemRole = systemRole,
                        maxTokens = maxTokens,
                        temperature = temperature,
                        top_p = top_p,
                        top_k = top_k,
                        presence_penalty = presence_penalty,
                        frequency_penalty = frequency_penalty,
                        proxy = proxy) {
  if (nchar(PERPLEXITY_API_KEY) == 0) {
    stop("`PERPLEXITY_API_KEY` not provided.")
  }


  # For limits see https://docs.perplexity.ai/docs/rate-limits
  # For pricing see https://docs.perplexity.ai/docs/pricing
  # For models see https://docs.perplexity.ai/docs/model-cards

  params <- list(
    url = "https://api.perplexity.ai/chat/completions",
    model = modelSelection,
    max_tokens = as.integer(maxTokens),
    top_k = top_k
  )

  if (!is.null(temperature) & !is.null(top_p)) {
    stop("You should either alter temperature or top_p, but not both.")
  } else if (!is.null(temperature)) {
    params$temperature <- temperature
  } else if (!is.null(top_p)) {
    params$top_p <- top_p
  }

  if (!is.null(frequency_penalty) & !is.null(presence_penalty)) {
    stop("You should either alter frequency_penalty or presence_penalty,
         but not both.")
  } else if (!is.null(frequency_penalty)) {
    params$frequency_penalty <- frequency_penalty
  } else if (!is.null(presence_penalty)) {
    params$presence_penalty <- presence_penalty
  }


  messages <- list(
          list(role = "system", content = systemRole),
          list(role = "user", content = prompt))



  if (!is.null(proxy)) {
    if (grepl("^(?:\\d{1,3}\\.){3}\\d{1,3}:\\d{2,5}$", proxy)) {
      proxy <- use_proxy(gsub(":.*", "", proxy),
                         as.numeric(gsub(".*:", "", proxy)))
    } else {
      stop("Invalid proxy provided: ", proxy)
    }
  }


  chatResponse <- list()
  keepQuerying <- TRUE

  while (keepQuerying) {
    postResult <- POST(
      params$url,
      add_headers("Authorization" = paste("Bearer", PERPLEXITY_API_KEY)),
      content_type_json(),
      body = toJSON(c(params, list(messages = messages)), auto_unbox = TRUE),
      encode = "json",
      proxy
    )

    if (!postResult$status_code %in% 200:299) {
      stop(content(postResult))
    }
    postResult <- content(postResult)

    chatResponse <- append(chatResponse, list(postResult))

    keepQuerying <- all(sapply(postResult$choices,
                               function(x) x$finish_reason == "length"))

    messages <- append(
      append(
        messages, list(list(role = "assistant",
                            content = responseParser(list(postResult))))
      ),
      list(list(role = "user", content = "continue"))
    )
  }

  return(chatResponse)
}
