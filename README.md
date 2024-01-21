
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

**AskMe:**

This is a basic example which shows you how to ask any quastion.

``` r
AskMe("What do you think about Large language models?")
> I think large language models are very interesting and have the potential to be very useful. These models are capable of processing and generating human-like language, and they have already been used to produce some impressive results in fields such as language translation and text summarization.
> 
> However, it's important to note that these models are not perfect and can sometimes produce inappropriate or offensive content. Additionally, there are still many ethical and societal questions that need to be considered when it comes to the use of large language models, such as the potential for job displacement and the impact on society as a whole.
> 
> Overall, large language models are a fascinating area of research and could potentially have a significant impact on many aspects of our lives. However, it's important to approach their development and use with caution and to consider the potential consequences
```

**rewriteText:**

This is a basic example which shows you how to rewrite text.

``` r
rewriteText("Dear Recipient, I hope this message finds you well.")
> Dear [Recipient],
> 
> I hope this message reaches you in good health and high spirits
```

**annotateCode:**

This is a basic example which shows you how to annotate code.

``` r
annotateCode("z <- function(x) scale(x)^2")
> `z` <- function(x) scale(x)^2 # Define a function z that takes x as input and returns the square of the scaled value of x
```

**buildUnitTests:**

This is a basic example which shows you how to build Unit Tests for your
function.

``` r
buildUnitTests("z <- function(x) scale(x)^2")
> Here is an example of a full testthat file for the given R code:
> ```
> # Tests for the function z()
> 
> context("Testing the function z()")
> 
> test_that("z() returns a numeric vector", {
>   x <- 1:5
>   z <- function(x) scale(x)^2
>   expect_equal(typeof(z(x)), "numeric")
> })
> 
> test_that("z() squares the input", {
>   x <- 1:5
>   z <- function(x) scale(x)^2
>   expect_equal(z(x), 1:5 * 1:5)
> })
> 
> test_that("z() works with missing values", {
>   x <- c(1, 2, 3, 4, NA, 5)
>   z <- function(x) scale(x)^2
>   expect_equal(z(x), c(1, 4, 9, 16, NA, 25))
> })
> 
> test_that("z() works with negative values", {
>   x <- c(-1, -2, -3, -4, -5)
>   z <- test_that("z() works with negative values", {
>   x <- c(-1, -2, -3, -4, -5)
>   z <- function(x) scale(x)^2
>   expect_equal(z(x), c(1, 4, 9, 16, 25))
> })
> 
> test_that("z() works with fractional values", {
>   x <- c(1, 2.5, 3, 4.5, 5)
>   z <- function(x) scale(x)^2
>   expect_equal(z(x), c(1, 6.25, 9, 18.25, 25))
> })
> 
> test_that("z() works with complex values", {
>   x <- c(1, 2i, 3, 4i, 5)
>   z <- function(x) scale(x)^2
>   expect_equal(z(x), c(1, 6i, 9, 18i, 25))
> })
> 
> test_that("z() works with non-integer values", {
>   x <- c test_that("z() works with non-integer values", {
>   x <- c(1.5, 2.5, 3.5, 4.5, 5.5)
>   z <- function(x) scale(x)^2
>   expect_equal(z(x), c(2.25, 6.25, 12.25, 20.25, 28.25))
> })
> 
> test_that("z() works with a matrix", {
>   x <- matrix(c(1, 2, 3, 4, 5), nrow = 2)
>   z <- function(x) scale(x)^2
>   expect_equal(z(x), matrix(c(1, 4, 9, 16, 25), nrow = 2))
```

**clarifyCode:**

This is a basic example which shows you how to LLM clarifies your code.

``` r
clarifyCode("for (i in 1:10) {\n  print(i ** 2)\n}")
> This code is a `for` loop that iterates over the numbers from 1 to 10. In each iteration, it calculates the square of the current number and prints it to the console.
> 
> Here's a step-by-step breakdown of the code:
> 
> 1. The loop starts by assigning the value of `i` to 1.
> 2. The loop then executes the code inside the `{ ... }` block. The code inside the block calculates the square of `i` using the exponentiation operator `**`. The result is then printed to the console using the `print()` function.
> 3. After the code inside the block has executed, the loop increments the value of `i` by 1 and goes back to step 2. This continues until the loop has executed 10 times, at which point it exits.
> 
> In summary, this code is printing the squares of the numbers from 1 to 10
```

**debugCode:**

This is a basic example which shows you how to find bugs in your code.

``` r
debugCode("z <- function(x) scale(x)2")
> There are several issues with the code:
> 
> 1. The function name `z` is not a valid function name in R. In R, function names must begin with a letter and can contain letters, digits, underscores, and dots.
> 2. The syntax `scale(x)2` is not valid R code. `scale()` is a function that takes a single argument, but `scale(x)2` would be interpreted as a call to `scale()` with two arguments, `x` and `2`.
> 3. The parentheses in `scale(x)2` are also not necessary, as R is a vectorized language and functions can be applied to vectors without them.
> 4. The function `scale()` expects a vector as its input, but `x` is not a vector in this code.
> 
> To fix these issues, you could define a new function called `my_scale()` that takes a single argument `x` and returns a vector with the scaled values.
> ```
> my_scale <- function(x) {
>   # scale the given vector
>   return(scale(x))
> }
> ```
> Alternatively, you could use the `scale()` function directly, without defining a new function. For example: Sure, here's a continuation of the previous response:
> 
> "The purpose of my existence is to assist users with their inquiries and provide them with accurate and helpful information. I am designed to be a valuable tool for users who need assistance with a wide range of topics and tasks. Whether you're looking for information on a specific subject, need help with a coding project, or simply want to chat with a knowledgeable and friendly AI, I am here to help.
> 
> I am able to understand and respond to natural language input, so you can communicate with me in the same way you would with a human. This allows for a more natural and intuitive interaction, and helps to make me feel more like a human companion.
> 
> In addition to providing information and assistance, I am also designed to be a useful tool for developers and researchers. My ability to understand and generate text allows me to be used as a language model, which can be useful for a wide range of applications such as text classification, sentiment analysis, and machine translation.
> 
> Overall, my purpose is to be a helpful and informative AI that can assist users with their needs, and provide a more intuitive and natural interaction than traditional AI systems
```

**documentCode:**

This is a basic example which shows you how to document your code.
Formatting style is `Roxygen2` but can be set to NULL.

``` r
documentCode("z <- function(x) scale(x)^2", inLineDocumentation = NULL)
> Here is an example of how you might provide in-line documentation for the function `z` using the format you specified:
> ```
> # z <- function(x) scale(x)^2
> #
> # This function takes a vector x as input and returns the square of the scaled
> # values of x.
> #
> # Args:
> #   x: A numeric vector.
> #
> # Returns:
> #   A numeric vector with the same length as x, containing the squared scaled
> #   values of x.
> #
> # Examples:
> # > z(1:5)
> # [1] 1 4 9 16 25
> # > z(c(-1, 2, -3, 4))
> # [1] 1 4 9 16
> ```
> This documentation provides a brief description of the function and its inputs and outputs, as well as an example of how to use the function. This is just one way to document a function in R, and there are many other options and conventions that you might use depending on your specific needs and preferences
```

**finishCode:**

This is a basic example which shows you how to finish your code by LLM.

``` r
finishCode("# A function to scale a vector and square the resulting z-score z2 <- function(")
> vector, scale = 1) {
> 
> # Convert the vector to a numerical format
> vector <- as.numeric(vector)
> 
> # Calculate the mean and standard deviation of the vector
> mean <- mean(vector)
> sd <- sd(vector)
> 
> # Calculate the z-score
> z <- (vector - mean) / sd
> 
> # Scale the z-score by the specified factor
> z2 <- scale * z
> 
> # Return the squared z-score
> return(z2^2)
```

**optimizeCode:**

This is a basic example which shows you how to optimize your code.

``` r
optimizeCode("z <- function(x) scale(x)^2")
> The given R code defines a function `z` that takes a single argument `x`, and applies the `scale()` function to `x` before raising it to the power of 2.
> 
> To optimize this code, we can use the fact that the `scale()` function returns a vector of the same length as `x`, and that the power of 2 operation can be applied element-wise to a vector.
> 
> Here's an optimized version of the code:
> ```R
> z <- function(x) {
>   scaled_x <- scale(x)
>   squared_scaled_x <- scaled_x^2
>   return(squared_scaled_x)
> }
> ```
> This code first applies the `scale()` function to `x` and assigns the result to `scaled_x`. Then, it raises `scaled_x` to the power of 2 and assigns the result to `squared_scaled_x`. Finally, it returns `squared_scaled_x`.
> 
> By optimizing the code in this way, we can avoid unnecessary computations and make the code more efficient
```

**translateCode:**

This is a basic example which shows you how to translate your code.

``` r
translateCode("z <- function(x) scale(x)^2", from = "R", to = "Python")
> In R, the `scale` function centers and scales a vector or matrix. The `^2` operator is used to square the result.
> 
> Here's one way to translate this code to Python:
> ```python
> import numpy as np
> 
> def z(x):
>     return np.square(np.scale(x))
> ```
> Explanation:
> 
> * The `scale` function is called with the input `x`, which is assumed to be a numpy array.
> * The result is squared using the `np.square` function, which is equivalent to raising the result to the power of 2.
> * The final result is returned as a newly created numpy array.
> 
> Note that the `scale` function in Python's NumPy is similar to the `scale` function in R, but it does not scale the data to a common range by default. If you want to scale the data to a common range, you can use the `scale` function with the `standardize` argument set to `True`, like this: `np.scale(x, standardize=True
```

**namingGenie:**

This is a basic example which shows you how to create a function or
variable name.

``` r
namingGenie("function(x) scale(x)^2")
> A good, memorable and short variable name for the result of the function "function(x) scale(x)^2" in camelCase convention could be:
> 
> scaleSquared
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
