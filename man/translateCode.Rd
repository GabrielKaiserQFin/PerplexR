% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/translateCode.R
\name{translateCode}
\alias{translateCode}
\title{Translate Code from One Language to Another}
\usage{
translateCode(
  code = clipr::read_clip(allow_non_interactive = TRUE),
  from = "R",
  to = "Python",
  PERPLEXITY_API_KEY = Sys.getenv("PERPLEXITY_API_KEY"),
  modelSelection = c("mistral-7b-instruct", "mixtral-8x7b-instruct",
    "codellama-70b-instruct", "sonar-small-chat", "sonar-small-online",
    "sonar-medium-chat", "sonar-medium-online"),
  systemRole = "You are a helpful assistant with extensive programming skills.",
  maxTokens = 265,
  temperature = 1,
  top_p = NULL,
  top_k = 100,
  presence_penalty = 0,
  frequency_penalty = NULL,
  proxy = NULL
)
}
\arguments{
\item{code}{A string containing the code to be translated.
If not provided, the function will attempt to read from the clipboard.}

\item{from}{The language of the input code. Default is "R".}

\item{to}{The target language for translation. Default is "Python".}

\item{PERPLEXITY_API_KEY}{PERPLEXITY API key.}

\item{modelSelection}{model choice. Default is mistral-7b-instruct.}

\item{systemRole}{Role for model. Default is: "You are a helpful assistant
with extensive knowledge of R programming."}

\item{maxTokens}{The maximum integer of completion tokens returned by API.}

\item{temperature}{The amount of randomness in the response,
valued between 0 inclusive and 2 exclusive. Higher values are more random,
and lower values are more deterministic. Set either temperature or top_p.}

\item{top_p}{Nucleus sampling threshold, valued between 0 and 1 inclusive.}

\item{top_k}{The number of tokens to keep for highest top-k filtering,
specified as an integer between 0 and 2048 inclusive.
If set to 0, top-k filtering is disabled.}

\item{presence_penalty}{A value between -2.0 and 2.0.
Positive values penalize new tokens based on whether they appear in the text
so far, increasing the model's likelihood to talk about new topics.
Incompatible with frequency_penalty.}

\item{frequency_penalty}{A multiplicative penalty greater than 0.
Values greater than 1.0 penalize new tokens based on their existing
frequency in the text so far, decreasing the model's likelihood to repeat
the same line verbatim. A value of 1.0 means no penalty.}

\item{proxy}{Default value is NULL.}
}
\value{
A string containing the translated code.
}
\description{
This function takes a snippet of code and translates it from one programming
language to another using Perplexity API. The default behavior is to read the code
from the clipboard and translate from R to Python.
}
\examples{
\dontrun{
translateCode("your R code here", from = "R", to = "Python")
}

}
