
<!-- README.md is generated from README.Rmd. Please edit that file -->

# PerplexR

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/PerplexR)](https://CRAN.R-project.org/package=PerplexR)
[![CRAN
downloads](https://cranlogs.r-pkg.org/badges/PerplexR)](https://cran.rstudio.com/web/packages/PerplexR/index.html)
[![R-CMD-check](https://github.com/GabrielKaiserQFin/PerplexR/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/GabrielKaiserQFin/PerplexR/actions/workflows/R-CMD-check.yaml)
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

<!-- Or install the current released version of `{PerplexR}` from  -->
<!-- [CRAN](https://cran.r-project.org/package=PerplexR): -->
<!-- ```{r eval = FALSE} -->
<!-- install.packages("PerplexR") -->
<!-- ``` -->

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

### Addins:

In your RStudio go to **Addins** and select **ASK LLM**, which will open
an interactive prompt in your Viewer, where you can choose between
different LLMs and adjust the temperature and the number of tokens to be
used. Just ask anything of you interest and hit the confirm button. The
**Done** button let you close the App. Similarly, you can mark or copy
any text or code and use the other Addins as described below. Addin
shortcuts will improve your effiency even further.

### AskMe:

This is a basic example which shows you how to ask any quastion.

``` r
AskMe("What do you think about Large language models?")
Large language models, such as transformer-based models like BERT, RoBERTa, and XLNet, have revolutionized the field of natural language processing in recent years. They have been shown to be highly effective at a wide range of language-related tasks, such as language translation, language generation, and language understanding.

One of the key advantages of large language models is their ability to learn from large amounts of data and to capture complex patterns and relationships in language. This has led to significant improvements in the performance of many NLP tasks, such as language translation, question answering, and text classification.

However, large language models are not without their limitations. One of the main challenges with large language models is that they require a large amount of computational resources and memory, which can make them difficult to train and deploy. Additionally, the quality of the training data and the model architecture can have a significant impact on the performance of the model, and it can be difficult to choose the right architecture and data for a particular task.

Overall, I think that large language models are a powerful tool for natural language processing tasks, but they should be used with caution and in the right context. It's important to carefully evaluate the performance of the model and to consider the Sure, I'd be happy to continue.

In addition to the topics we've discussed, there are many other interesting topics related to AI that you might find helpful to know about.
```

### rewriteText:

This is a basic example which shows you how to rewrite text.

``` r
rewriteText("Dear Recipient, I hope this message finds you well.")
Dear Recipient,

I hope this message reaches you in good health and high spirits.
```

### translateText:

This is a basic example which shows you how to translate text.

``` r
translateText("Dear Recipient, I hope this message finds you well.", toLanguage = "Spanish")
Estimado/a destinatario/a, espero que este mensaje te encuentre bien.
```

### annotateCode:

This is a basic example which shows you how to annotate code.

``` r
annotateCode("z <- function(x) scale(x)^2")
`# Calculate the square of the scaled input x`
```

### buildUnitTests:

This is a basic example which shows you how to build Unit Tests for your
function.

``` r
buildUnitTests("z <- function(x) scale(x)^2")
```

    Here is an example of a testthat file for the given R code:
    ```
    # test_that.R

    # Load the testthat package
    library(testthat)

    # Define the subject of the test
    subject <- "z"

    # Define the test cases
    test_cases <- list(
      # Test case 1: x = c(1, 2, 3)
      test_that(
        z(c(1, 2, 3)) == c(1, 4, 9),
        label = "z(c(1, 2, 3)) == c(1, 4, 9)"
      ),
      # Test case 2: x = c(1, 2, 3, 4)
      test_that(
        z(c(1, 2, 3, 4)) == c(1, 4, 9, 16),
        label = "z(c(1, 2, 3, 4)) == c(1, 4, 9, 16)"
      ),
      # Test case 3: x = c(1, 2, # Test case 3: x = c(1, 2, 3, 4)
      test_that(
        z(c(1, 2, 3, 4)) == c(1, 4, 9, 16),
        label = "z(c(1, 2, 3, 4)) == c(1, 4, 9, 16)"
      ),
      # Test case 4: x = c(1, 2, 3, 4, 5)
      test_that(
        z(c(1, 2, 3, 4, 5)) == c(1, 4, 9, 16, 25),
        label = "z(c(1, 2, 3, 4, 5)) == c(1, 4, 9, 16, 25)"
      )


### clarifyCode:

This is a basic example which shows you how to LLM clarifies your code.

``` r
clarifyCode("for (i in 1:10) {\n  print(i ** 2)\n}")
The code you provided is a simple for loop in R that iterates 10 times and prints out the square of each iteration. Here's a breakdown of the code:

* `for (i in 1:10)`: This line initializes the for loop with the variable `i` taking on the values from 1 to 10.
* `{ print(i ** 2) }`: This line is the body of the for loop, and it prints out the square of `i` each time the loop iterates. The `**` operator is used for exponentiation, so `i ** 2` is equivalent to `i` squared.

So, the code will print out the squares of the numbers from 1 to 10: 1, 4, 9, 16, 25, 36, 49, 64, 81, 100.
```

### debugCode:

This is a basic example which shows you how to find bugs in your code.

``` r
debugCode("z <- function(x) scale(x)2")
```

    There are several issues with the code you provided:

    1. The `z` function is not defined correctly. It should be defined using the `=` operator, like this: `z <- function(x) { ... }`.
    2. The `scale` function is not being called correctly. It should be called with parentheses, like this: `scale(x)`.
    3. The `2` at the end of the code snippet is not necessary. It is not a valid argument for the `scale` function.

    Here is an updated version of the code that is corrected:
    ```
    z <- function(x) {
      scale(x)
    }
    ```

### documentCode:

This is a basic example which shows you how to document your code.
Formatting style is `Roxygen2` but can be set to NULL.

``` r
documentCode("z <- function(x) scale(x)^2", inLineDocumentation = NULL)
```

    Sure, here's an example of in-line documentation for the function `z <- function(x) scale(x)^2`:
    ```
    z <- function(x) {
      # Scale the input vector x by a factor of 2
      # and then square the result
      scaled_x <- scale(x)
      return(scaled_x^2)
    }
    ```
    In this documentation, we use the `,` character to separate the different parts of the function documentation. The first part is the function name and signature, which is `z <- function(x)`, followed by a brief description of what the function does, which is "Scale the input vector x by a factor of 2 and then square the result". The `return` statement is used to return the result of the function.

    You can also add more details about the function, such as the author, version, and date created, like this:
    ```
    z <- function(x) {
      # Scale the input vector x by a factor of 2
      # and then square the result
      #
      # Author: Your Name
      # Version: 1.0
      # Date: June 16, 20 The `scale` function is defined as `scale <- function(x) x/2`, so the function `z` can be written in a more concise way as follows:
    ```
    z <- function(x) {
      scaled_x <- x/2
      return(scaled_x^2)
    }
    ```
    This function takes a vector `x` as input, divides it by 2 to scale it down, and then squares the result. The `return` statement is used to return the final result of the function.

    You can also use the `*` operator to simplify the function, like this:
    ```
    z <- function(x) x^2/2
    ```
    This function is equivalent to the previous one, but it is more concise and easier to read.

    In general, it is a good practice to use meaningful variable names and add comments to your code to make it more readable and understandable.

### finishCode:

This is a basic example which shows you how to finish your code by LLM.

``` r
finishCode("# A function to scale a vector and square the resulting z-score z2 <- function(")
# A function to scale a vector and square the resulting z-score
z2 <- function(x, center, scale) {
# center is the mean of the vector
# scale is the standard deviation of the vector

# Calculate the z-score
z <- (x - center) / scale

# Calculate the squared z-score
z2 <- z^2

return(z2)
}

# Test the function with a sample vector
x <- c(1, 2, 3, 4, 5)
center <- mean(x)
scale <- sd(x)
z2(x, center, scale)

# The function returns the squared z-score
# [1] 0.25 1.00 2.00 3.00 4.00

# Note: The function uses the sample mean and standard deviation to calculate the z-score. If the mean and standard deviation of the population are known, they should be used instead.
```

### optimizeCode:

This is a basic example which shows you how to optimize your code.

``` r
optimizeCode("z <- function(x) scale(x)^2")
```

    The R code "z <- function(x) scale(x)^2" is a simple function that squares the scaled value of a given vector x. While the code is concise, there are a few ways to optimize it for speed and readability.


### translateCode:

This is a basic example which shows you how to translate your code.

``` r
translateCode("z <- function(x) scale(x)^2", from = "R", to = "Python")
```

    The given R code defines a function `z` that takes a single argument `x` and applies the `scale` function to `x`, then squares the result. Here is the equivalent Python code:
    ```
    def z(x):
        return scale(x)**2
    ```
    In Python, the `def` keyword is used to define a function, and the `return` keyword is used to return a value from the function. The `scale` function is not a built-in function in Python, but it can be defined using the `scipy.stats` library as follows:
    ```
    from scipy.stats import scale
    ```
    Alternatively, you can use the `stats` module from the `scipy` package to define the `scale` function:
    ```
    import scipy.stats as stats

    def scale(x):
        return stats.norm.ppf(x)
    ```
    This defines a function `scale` that takes a single argument `x` and returns the value of the normal distribution with the given mean and variance.

### namingGenie:

This is a basic example which shows you how to create a function or
variable name.

``` r
namingGenie("function(x) scale(x)^2")
The result of the code "function(x) scale(x)^2" is a squared scaled value of x. One possible short and memorable variable name for this result is "sqdScale".
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

- `returnType`: Default is 1, which cats the output, type 2 is unchanged
  and type 3 returns the output to the clipboard and returns TRUE.
