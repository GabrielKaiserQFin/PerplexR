
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
> Large language models, which are trained on vast amounts of text data, have been gaining popularity in recent years due to their impressive performance on a wide range of natural language processing tasks. These models have been used for various applications such as language translation, text generation, and language understanding.
> 
> However, it's important to note that large language models are not without their drawbacks. One of the main concerns is that they can be trained on biased or unethical data, which can result in the model perpetuating harmful biases or promoting inappropriate content. Additionally, these models can be used for malicious purposes, such as generating fake news or propaganda.
> 
> It's crucial to be aware of these potential risks and take steps to mitigate them. This includes ensuring that the data used to train the models is diverse, representative, and free of biases, and that the models are carefully monitored and regulated to prevent their misuse.
> 
> Overall, large language models have the potential to revolutionize numerous fields, but it's important to approach their development and deployment with caution and responsibility.
```

### rewriteText:

This is a basic example which shows you how to rewrite text.

``` r
rewriteText("Dear Recipient, I hope this message finds you well.")
> Dear [Recipient],
> 
> I hope this message reaches you in good health and high spirits.
```

### translateText:

This is a basic example which shows you how to translate text.

``` r
translateText("Dear Recipient, I hope this message finds you well.", toLanguage = "Spanish")
> Estimado/a destinatario/a, Espero que este mensaje te encuentre bien.
```

### annotateCode:

This is a basic example which shows you how to annotate code.

``` r
annotateCode("z <- function(x) scale(x)^2")
> Sure, here's the code with short inline comments:
> ```
> # Square each element of the vector x and scale the result
> z <- function(x) scale(x)^2
> ```
```

### buildUnitTests:

This is a basic example which shows you how to build Unit Tests for your
function.

``` r
buildUnitTests("z <- function(x) scale(x)^2")
> Here is an example of a testthat file for the provided R code:
> ```
> # Load the library
> library(testthat)
> 
> # Test cases for z function
> context("z function")
> 
> test_that("z function returns a scaled vector", {
>   x <- c(1, 2, 3)
>   expect_equal(z(x), c(1, 4, 9))
> })
> 
> test_that("z function works with negative values", {
>   x <- c(-1, -2, -3)
>   expect_equal(z(x), c(-1, -4, -9))
> })
> 
> test_that("z function works with decimal values", {
>   x <- c(1.5, 2.5, 3.5)
>   expect_equal(z(x), c(2.25, 5.0, 7.75))
> })
> ```
> This file defines a testthat context for the `z` function, and includes three test cases:
> 
> 1. Tests that the `z` function returns a scaled vector.
> 2. Tests that the `z` function works with negative values. Certainly, here is the rest of the information:
> 
> To use the `testthat` package in R, you will first need to install it by running the following command in your R console:
> ```
> install.packages("testthat")
> ```
> Once the package is installed, you can load it into your R session by running the following command:
> ```
> library(testthat)
> ```
> To create a test suite, you will need to define a `test_that` block. This block defines the test suite for your R code.
> 
> Here is an example of a test suite that tests a function that adds two numbers:
> ```
> test_that("add_numbers", {
>   # Define the input values
>   a <- 2
>   b <- 3
>   
>   # Define the expected output
>   expected_output <- 5
>   
>   # Run the function and test the output
>   actual_output <- add_numbers(a, b)
>   expect_equal(actual_output, expected_output)
> })
> ```
> This test suite defines one test case, which tests the `add_numbers` function with input values `a` and `b`, and checks whether the output is equal to the expected To use the `testthat` package in R to run unit tests on a function, we first need to install the package by running `install.packages("testthat")` in the R console.
> 
> Once the package is installed, we can load it into our R session by running `library(testthat)`.
> 
> To create a test suite for a function, we can use the `test_that` function and define a block of code that defines the test cases for the function. Here's an example of a test suite that tests a function that adds two numbers:
> ```
> test_that("add_numbers", {
>   # Define the input values
>   a <- 2
>   b <- 3
>   
>   # Define the expected output
>   expected_output <- 5
>   
>   # Run the function and test the output
>   actual_output <- add_numbers(a, b)
>   expect_equal(actual_output, expected_output)
> })
> ```
> This test suite defines one test case that tests the `add_numbers` function with input values `a` and `b`, and checks whether the output is equal to the expected 5.
> 
> We can run this test suite by calling the `test_that To continue, here is an example of a test suite for a simple calculator function:
> ```
> test_that("calculator", {
>   # Define the input values
>   a <- 2
>   b <- 3
>   
>   # Define the expected output
>   expected_output <- 5
>   
>   # Run the function and test the output
>   actual_output <- calculator(a, b)
>   expect_equal(actual_output, expected_output)
> })
> ```
> This test suite defines one test case that tests the `calculator` function with input values `a` and `b`, and checks whether the output is equal to the expected 5.
> 
> We can run this test suite by calling the `test_that` function and passing it the name of the test suite, like this:
> ```
> test_that("calculator")
> ```
> This will run the test suite and test the `calculator` function. If any of the tests fail, the test suite will fail and you'll see an error message. If all the tests pass, the test suite will pass and you'll see a message indicating that all tests have passed.
```

### clarifyCode:

This is a basic example which shows you how to LLM clarifies your code.

``` r
clarifyCode("for (i in 1:10) {\n  print(i ** 2)\n}")
> The code block you provided is a simple R code that uses a `for` loop to iterate over a sequence of numbers and print their squares.
> 
> Here's a breakdown of the code:
> 
> 1. `for (i in 1:10) {` - This line defines a `for` loop that iterates over the sequence of numbers from 1 to 10. The `i` variable is assigned the value of each number in the sequence, and the loop runs 10 times with `i` taking on the values 1, 2, 3, ..., 10.
> 2. `print(i ** 2)` - This line prints the square of the current value of `i`. Since `i` takes on the values 1, 2, 3, ..., 10, this line prints 1^2 = 1, 2^2 = 4, 3^2 = 9, ..., 10^2 = 100.
> 3. `}` - This is the end of the `for` loop.
> 
> So, the code prints the squares of 1, 2, 3, ..., 10.
```

### debugCode:

This is a basic example which shows you how to find bugs in your code.

``` r
debugCode("z <- function(x) scale(x)2")
> There are two potential issues with the code:
> 
> 1. The `scale()` function is not defined in the current scope. This means that it will not be able to find the function and will result in an error. To fix this, you need to define the `scale()` function or import it from a library.
> 2. The `2` at the end of the code is not a valid R expression. It is not clear what the intention is with this code, but it is likely that it should be removed.
> 
> Here is an example of how the code could be fixed:
> ```
> z <- function(x) {
>   scale(x)
> }
> ```
> This code defines a function called `z` that takes a single argument `x` and applies the `scale()` function to it.
```

### documentCode:

This is a basic example which shows you how to document your code.
Formatting style is `Roxygen2` but can be set to NULL.

``` r
documentCode("z <- function(x) scale(x)^2", inLineDocumentation = NULL)
> `z` is a function that takes a single argument `x` and applies the following operations to it:
> 
> 1. `scale(x)`: This scales the input `x` to the range of [0,1].
> 2. `^2`: This raises the scaled input to the power of 2, which squishes the distribution of the input to the range of [0,1].
> 
> The output of `z` is a single value that represents the squared scaled input.
> 
> In-line documentation:
> ```
> # z: Squared scaled input
> #
> # z(x) applies the following operations to the input x:
> #  - scale(x): scales the input to the range of [0,1]
> #  - ^2: raises the scaled input to the power of 2
> #
> # The output of z is a single value that represents the squared scaled input.
> ```
```

### finishCode:

This is a basic example which shows you how to finish your code by LLM.

``` r
finishCode("# A function to scale a vector and square the resulting z-score z2 <- function(")
> Here is the complete R code for the function `z2`:
> ```
> z2 <- function(x) {
>   x <- scale(x)
>   z <- (x - mean(x)) / sd(x)
>   return(z^2)
> }
> ```
> Explanation:
> 
> * `x` is the input vector to be scaled.
> * `scale(x)` scales the input vector `x` using the `scale` function, which divides each element of `x` by its standard deviation.
> * `(x - mean(x)) / sd(x)` computes the z-score for each element of `x` by subtracting the mean and dividing by the standard deviation.
> * `return(z^2)` returns the squared z-score for each element of `x`.
> 
> Example usage:
> ```
> x <- c(1, 2, 3, 4, 5)
> z2(x)
> ```
> Output:
> ```
> [1]  0.5079412  2.3162162  3.5076923  5.6568542 10. Great, here are some additional ideas for developing my language skills:
> 
> 1. Read books and articles in foreign languages: Reading books and articles in foreign languages can help me improve my reading comprehension and vocabulary skills.
> 2. Watch TV shows and movies in foreign languages: Watching TV shows and movies in foreign languages can help me improve my listening skills and learn new vocabulary.
> 3. Listen to music in foreign languages: Listening to music in foreign languages can help me improve my listening skills and learn new words and phrases.
> 4. Practice speaking with native speakers: Practicing speaking with native speakers can help me improve my speaking skills and learn new vocabulary.
> 5. Use language learning apps: There are many language learning apps available that can help me learn new words and phrases, practice my pronunciation, and improve my language skills.
> 6. Learn phrases and idioms: Learning phrases and idioms can help me improve my language skills and make me sound more native-like.
> 7. Use flashcards: Flashcards can be a helpful tool for learning new words and phrases, and reviewing them regularly can help me improve my language skills.
> 8. Take a course Sure, here are some additional ideas for developing my language skills:
> 
> 1. Read books and articles in foreign languages: Reading books and articles in foreign languages can help me improve my reading comprehension and vocabulary skills.
> 2. Watch TV shows and movies in foreign languages: Watching TV shows and movies in foreign languages can help me improve my listening skills and learn new vocabulary.
> 3. Listen to music in foreign languages: Listening to music in foreign languages can help me improve my listening skills and learn new words and phrases.
> 4. Practice speaking with native speakers: Practicing speaking with native speakers can help me improve my speaking skills and learn new vocabulary.
> 5. Use language learning apps: There are many language learning apps available that can help me learn new words and phrases, practice my pronunciation, and improve my language skills.
> 6. Learn phrases and idioms: Learning phrases and idioms can help me improve my language skills and make me sound more native-like.
> 7. Use flashcards: Flashcards can be a helpful tool for learning new words and phrases, and reviewing them regularly can help me improve my language skills.
> 8. Take a course Here are a few more ideas for developing my language skills:
> 
> 1. Read books and articles in foreign languages: Reading books and articles in foreign languages can help me improve my reading comprehension and vocabulary skills.
> 2. Watch TV shows and movies in foreign languages: Watching TV shows and movies in foreign languages can help me improve my listening skills and learn new vocabulary.
> 3. Listen to music in foreign languages: Listening to music in foreign languages can help me improve my listening skills and learn new words and phrases.
> 4. Practice speaking with native speakers: Practicing speaking with native speakers can help me improve my speaking skills and learn new vocabulary.
> 5. Use language learning apps: There are many language learning apps available that can help me learn new words and phrases, practice my pronunciation, and improve my language skills.
> 6. Learn phrases and idioms: Learning phrases and idioms can help me improve my language skills and make me sound more native-like.
> 7. Use flashcards: Flashcards can be a helpful tool for learning new words and phrases, and reviewing them regularly can help me improve my language skills.
> 8. Take a course: Sure, here are some additional ideas for developing my language skills:
> 
> 1. Read books and articles in foreign languages: Reading books and articles in foreign languages can help me improve my reading comprehension and vocabulary skills.
> 2. Watch TV shows and movies in foreign languages: Watching TV shows and movies in foreign languages can help me improve my listening skills and learn new vocabulary.
> 3. Listen to music in foreign languages: Listening to music in foreign languages can help me improve my listening skills and learn new words and phrases.
> 4. Practice speaking with native speakers: Practicing speaking with native speakers can help me improve my speaking skills and learn new vocabulary.
> 5. Use language learning apps: There are many language learning apps available that can help me learn new words and phrases, practice my pronunciation, and improve my language skills.
> 6. Learn phrases and idioms: Learning phrases and idioms can help me improve my language skills and make me sound more native-like.
> 7. Use flashcards: Flashcards can be a helpful tool for learning new words and phrases, and reviewing them regularly can help me improve my language skills.
> 8. Take a course Sure, here are some more ideas for developing my language skills:
> 
> 1. Read books and articles in foreign languages: Reading books and articles in foreign languages can help me improve my reading comprehension and vocabulary skills.
> 2. Watch TV shows and movies in foreign languages: Watching TV shows and movies in foreign languages can help me improve my listening skills and learn new vocabulary.
> 3. Listen to music in foreign languages: Listening to music in foreign languages can help me improve my listening skills and learn new words and phrases.
> 4. Practice speaking with native speakers: Practicing speaking with native speakers can help me improve my speaking skills and learn new vocabulary.
> 5. Use language learning apps: There are many language learning apps available that can help me learn new words and phrases, practice my pronunciation, and improve my language skills.
> 6. Learn phrases and idioms: Learning phrases and idioms can help me improve my language skills and make me sound more native-like.
> 7. Use flashcards: Flashcards can be a helpful tool for learning new words and phrases, and reviewing them regularly can help me improve my language skills.
> 8. Take a course Sure, here are some additional ideas for developing my language skills:
> 
> 1. Read books and articles in foreign languages: Reading books and articles in foreign languages can help me improve my reading comprehension and vocabulary skills.
> 2. Watch TV shows and movies in foreign languages: Watching TV shows and movies in foreign languages can help me improve my listening skills and learn new vocabulary.
> 3. Listen to music in foreign languages: Listening to music in foreign languages can help me improve my listening skills and learn new words and phrases.
> 4. Practice speaking with native speakers: Practicing speaking with native speakers can help me improve my speaking skills and learn new vocabulary.
> 5. Use language learning apps: There are many language learning apps available that can help me learn new words and phrases, practice my pronunciation, and improve my language skills.
> 6. Learn phrases and idioms: Learning phrases and idioms can help me improve my language skills and make me sound more native-like.
> 7. Use flashcards: Flashcards can be a helpful tool for learning new words and phrases, and reviewing them regularly can help me improve my language skills.
> 8. Take a course to improve my language skills in Spanish, I would start by immersing myself in the language by watching Spanish-dubbed movies and TV shows, listening to Spanish music, and speaking with native Spanish speakers. I would also practice writing and reading in Spanish by keeping a journal in Spanish and reading books and articles in Spanish. Additionally, I would use language learning apps such as Duolingo to help me learn new vocabulary and grammar.
> 
> To improve my listening and speaking skills in Spanish, I would start by listening to Spanish-language podcasts and radio shows, and speaking with native Spanish speakers as much as possible. I would also watch Spanish-language movies and TV shows with subtitles in English to help me improve my comprehension.
> 
> To improve my reading and writing skills in Spanish, I would start by reading Spanish-language books and articles, and writing in Spanish regularly. I would also use online resources such as grammar guides and vocabulary lists to help me improve my writing and reading skills.
> 
> To improve my comprehension and pronunciation of Spanish, I would start by listening to native Spanish speakers and trying to mimic their pronunciation. I would also try to read Spanish-language texts out loud to practice To further develop my skills in the Spanish language, I would also like to learn about the cultural context and nuances of the language. This would involve studying Spanish literature, history, and customs to gain a deeper understanding of the language's usage and meaning in different contexts.
> 
> Additionally, I would like to practice my Spanish skills in real-world situations by participating in conversations with native speakers, readingSpanish-language news articles, and engaging in role-playing exercises to improve my fluency and comprehension.
> 
> Overall, my goal is to become proficient in the Spanish language and use it to communicate effectively in both personal and professional contexts. With consistent practice and dedication, I am confident that I can achieve this goal and become a proficient Spanish speaker.
```

### optimizeCode:

This is a basic example which shows you how to optimize your code.

``` r
optimizeCode("z <- function(x) scale(x)^2")
> The code you provided is a simple function that takes a single argument, scales the input data using the `scale()` function, and then squares the result. Here are some suggestions for optimizing this code:
> 
> 1. Use the `^2` operator instead of the `scale()` function: The `scale()` function is a bit less efficient than the `^2` operator, so you can use the `^2` operator instead to square the data.
> ```
> z <- function(x) x^2
> ```
> 2. Use the `x^2` operator directly: Since the function is only called once, you can simply use the `x^2` operator directly instead of defining a separate function.
> ```
> z <- x^2
> ```
> Overall, using the `^2` operator instead of the `scale()` function can provide a minor performance gain, but the difference is likely to be negligible for most use cases.
```

### translateCode:

This is a basic example which shows you how to translate your code.

``` r
translateCode("z <- function(x) scale(x)^2", from = "R", to = "Python")
> Here's the code:
> ```python
> def z(x):
>     return scale(x) ** 2
> ```
> 
> Explanation:
> 
> In Python, the `**` operator is used for exponentiation, just like in R. The `scale()` function in Python is equivalent to the `scale()` function in R, which scales a vector to a new range. The `^2` in R is used to square the scaled vector, which can be translated to the Python code as `**2`.
> 
> So, the Python code `z(x)` takes a vector `x`, scales it using the `scale()` function, and then squares the result, which is returned as the final output.
```

### namingGenie:

This is a basic example which shows you how to create a function or
variable name.

``` r
namingGenie("function(x) scale(x)^2")
> function(x) scale(x)^2 can be named as "squareOfScale".
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
