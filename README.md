
<!-- README.md is generated from README.Rmd. Please edit that file -->

# PerplexR

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/PerplexR)](https://CRAN.R-project.org/package=PerplexR)
[![R-CMD-check](https://github.com/GabrielKaiserQFin/PerplexR/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/GabrielKaiserQFin/PerplexR/actions/workflows/R-CMD-check.yaml)
[![CRAN
downloads](https://cranlogs.r-pkg.org/badges/PerplexR)](https://cran.rstudio.com/web/packages/PerplexR/index.html)
<!-- badges: end -->

The objective of `PerplexR` is to offer R users an intuitive interface
for leveraging the capabilities of the Perplexity API [Pro
subscription](https://docs.perplexity.ai/docs/pricing). Utilizing the
supplied functions, users can enhance their programming productivity by
incorporating Large Language Models. Furthermore, `PerplexR` includes a
RStudio addin, enabling seamless interactive integration of Perplexity
prompts.

## Installation

You can install the development version of PerplexR from
[GitHub](https://github.com/GabrielKaiserQFin/PerplexR) with:

``` r
# install.packages("devtools")
devtools::install_github("GabrielKaiserQFin/PerplexR")
```

Or install the current released version of `{PerplexR}` from
[CRAN](https://cran.r-project.org/package=PerplexR):

``` r
install.packages("PerplexR")
```

## Requirements

If you have a Pro subscription, you can create an API key by accessing
[Perplexity API page](https://www.perplexity.ai/settings/api), otherwise
you can not use `{PerplexR}`.

To use your API key in `{PerplexR}`, you need to configure it in the
.Renviron file, by executing `usethis::edit_r_environ()` and adding the
following line:

``` r
PERPLEXITY_API_KEY=XX-XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```

Ohterwise you can also do this on a session-by-session basis by
performing the following step:

``` r
Sys.setenv(PERPLEXITY_API_KEY = "XX-XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
```

## Examples

**AskMe:**

This is a basic example which shows you how to ask any quastion.

``` r
AskMe("What do you think about Large language models?")
> Large language models, like me, are artificial intelligence systems designed to process and generate human-like text based on the data they have been trained on. These models use deep learning techniques, specifically a type of model called a Transformer, to understand context, generate coherent responses, and learn from large datasets. I can help answer questions, write poems, code, and even engage in conversation. However, it's essential to remember that while large language models can generate realistic-sounding text, they don't truly understand or have consciousness. They simply process and generate text based on patterns they've learned during training
```

**rewriteText:**

This is a basic example which shows you how to rewrite text.

``` r
# rewriteText("Dear Recipient, I hope this message finds you well.")
```

**annotateCode:**

This is a basic example which shows you how to annotate code.

``` r
# annotateCode("z <- function(x) scale(x)^2")
```

**buildUnitTests:**

This is a basic example which shows you how to build Unit Tests for your
function.

``` r
# buildUnitTests("z <- function(x) scale(x)^2")
```

**clarifyCode:**

This is a basic example which shows you how to LLM clarifies your code.

``` r
# clarifyCode("for (i in 1:10) {\n  print(i ** 2)\n}")
```

**debugCode:**

This is a basic example which shows you how to find bugs in your code.

``` r
# debugCode("z <- function(x) scale(x)2")
```

**documentCode:**

This is a basic example which shows you how to document your code.
Formatting style is `Roxygen2` but can be set to NULL.

``` r
# documentCode("z <- function(x) scale(x)^2", inLineDocumentation = NULL)
```

**finishCode:**

This is a basic example which shows you how to finish your code by LLM.

``` r
# finishCode("# A function to scale a vector and square the resulting z-score z2 <- function(")
```

**optimizeCode:**

This is a basic example which shows you how to optimize your code.

``` r
# optimizeCode("z <- function(x) scale(x)^2")
```

**translateCode:**

This is a basic example which shows you how to translate your code.

``` r
# translateCode("z <- function(x) scale(x)^2", from = "R", to = "Python")
```

**varGenie:**

This is a basic example which shows you how to create a variable name.

``` r
# varGenie("function(x) scale(x)^2"))
```

## Perplexity Model Arguments

The parameters of perplexity models can be adjusted by passing
functional arguments.

- `text` or `code`: The text or code input required for processing by
  LLM. If omitted, LLM will utilize the content currently held in the
  clipboard.

- `PERPLEXITY_API_KEY`: The PERPLEXITY API key. By default it is set to
  `Sys.getenv("PERPLEXITY_API_KEY")`.

- `modelSelection`: model choice. Default is `"codellama-34b-instruct"`
  but other available
  [models](https://docs.perplexity.ai/docs/model-cards) are:
  “`llama-2-70b-chat`”, “`mistral-7b-instruct`”,
  “`mixtral-8x7b-instruct`”, “`pplx-7b-chat`”, “`pplx-70b-chat`”,
  “`pplx-7b-online`”, “`pplx-70b-online`”

- `systemRole`: System role for model. Default is set to “You are a
  helpful assistant”.

- `maxTokens`: The maximum integer of completion tokens returned by the
  API. The total number of tokens requested in max_tokens plus the
  number of prompt tokens sent in messages must not exceed the context
  window token limit of model requested. If left unspecified, then the
  model will generate tokens until either it reaches its stop token or
  the end of its context window.

- `temperatur`: The amount of randomness in the response, valued between
  0 inclusive and 2 exclusive. Higher values are more random, and lower
  values are more deterministic. You should either set temperature or
  top_p, but not both.

- `top_p`: The nucleus sampling threshold, valued between 0 and 1
  inclusive. For each subsequent token, the model considers the results
  of the tokens with top_p probability mass. You should either alter
  temperature or top_p, but not both.

- `top_k`: The number of tokens to keep for highest top-k filtering,
  specified as an integer between 0 and 2048 inclusive. If set to 0,
  top-k filtering is disabled.

- `presence_penalty`: A value between -2.0 and 2.0. Positive values
  penalize new tokens based on whether they appear in the text so far,
  increasing the model’s likelihood to talk about new topics.
  Incompatible with frequency_penalty.

- `frequency_penalty`: A multiplicative penalty greater than 0. Values
  greater than 1.0 penalize new tokens based on their existing frequency
  in the text so far, decreasing the model’s likelihood to repeat the
  same line verbatim. A value of 1.0 means no penalty. Incompatible with
  presence_penalty.

- `proxy`: Default value is NULL. To execute Perplexity queries via a
  proxy server, specify the proxy address and port as an argument to the
  function instance. Use the following format:
  `"proxy_address:proxy_port"`. An example would be:
  `"81.94.255.13:8080"`

- `verbose`: Default value is FALSE.

- `returnType`: Default is 1, which cats the output, type 2 is unchanged
  and type 3 returns the output to the clipboard and returns TRUE.
