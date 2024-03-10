#' Parse Perplexity API Response
#'
#' Takes the raw response from the Perplexity API and extracts the text content from it.
#'
#' @param raw The raw object returned by the Perplexity API.
#'
#' @return Returns a character vector containing the text content of the response.
#'
responseParser <- function(raw) {
  # Apply function to each element in list 'raw'
  chatResponse <- unlist(lapply(raw, function(x) {
    # Get the first choice from each element's 'choices' list
    choice <- x$choices[[1]]
    # Extract message content from the choice
    message <- unique(choice$message$content[1])
    # Store the extracted message content in 'chatResponse' as a character string
    chatResponse <- paste(trimws(message), collapse = "")
  }))
  # Return the processed 'chatResponse'
  return(unique(chatResponse))
}
