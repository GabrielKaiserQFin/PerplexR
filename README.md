
<!-- README.md is generated from README.Rmd. Please edit that file -->

# perplexR

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/perplexR)](https://CRAN.R-project.org/package=perplexR)
[![CRAN
downloads](https://cranlogs.r-pkg.org/badges/perplexR)](https://cran.rstudio.com/web/packages/perplexR/index.html)
[![R-CMD-check](https://github.com/GabrielKaiserQFin/PerplexR/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/GabrielKaiserQFin/PerplexR/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The objective of `perplexR` is to offer R users an intuitive interface
for leveraging the capabilities of the Perplexity API [Pro
subscription](https://docs.perplexity.ai/docs/pricing). Utilizing the
supplied functions, users can enhance their programming productivity by
incorporating Large Language Models. Furthermore, `perplexR` includes a
RStudio addin, enabling seamless interactive integration of Perplexity
prompts.

## Installation

You can install the development version of perplexR from
[GitHub](https://github.com/GabrielKaiserQFin/perplexR) with:

``` r
# install.packages("devtools")
devtools::install_github("GabrielKaiserQFin/perplexR")
```

<!-- Or install the current released version of `{perplexR}` from  -->
<!-- [CRAN](https://cran.r-project.org/package=perplexR): -->
<!-- ```{r eval = FALSE} -->
<!-- install.packages("perplexR") -->
<!-- ``` -->

## Requirements

If you have a Pro subscription, you can create an API key by accessing
[Perplexity API page](https://www.perplexity.ai/settings/api), otherwise
you can not use `{perplexR}`.

To use your API key in `{perplexR}`, you need to configure it in the
.Renviron file, by executing `usethis::edit_r_environ()` and adding the
following line:

``` r
PERPLEXITY_API_KEY=XX-XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```

Otherwise you can also do this on a session-by-session basis by
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
shortcuts will improve your efficiency even further.

### AskMe:

This is a basic example which shows you how to ask any question.

``` r
AskMe("What do you think about Large language models?")
I think that large language models, such as transformer-based models like BERT and RoBERTa, have been incredibly influential in the field of natural language processing. They have demonstrated the ability to learn and represent complex patterns in language, and have been used to improve a wide range of tasks such as language translation, language generation, and question answering.

However, I also think that there are potential risks and challenges associated with the widespread use of large language models. For example, there are concerns about the potential for misuse, such as generating fake news or propaganda, or using the models to impersonate individuals or groups. Additionally, there are concerns about the impact of large language models on employment, as well as the potential for bias in the data used to train the models.

Overall, I believe that large language models have the potential to be incredibly powerful tools, but it is important to carefully consider their potential risks and challenges, and to work towards developing responsible and ethical use cases for these models.
```

### rewriteText:

This is a basic example which shows you how to rewrite text.

``` r
rewriteText("Dear Recipient, I hope this message finds you well.")
Dear [Recipient],

I hope this message finds you in good health and high spirits.
```

### translateText:

This is a basic example which shows you how to translate text.

``` r
translateText("Dear Recipient, I hope this message finds you well.", toLanguage = "Spanish")
¡Claro que sí! Aquí está la traducción al español:

"Estimado/a destinatario, espero que este mensaje te encuentre bien."
```

### annotateCode:

This is a basic example which shows you how to annotate code.

``` r
annotateCode("z <- function(x) scale(x)^2")
`# Define a function z that takes a vector x as input`
`# Apply the scale function to x, then raise the result to the power of 2`
```

### buildUnitTests:

This is a basic example which shows you how to build Unit Tests for your
function.

``` r
buildUnitTests("z <- function(x) scale(x)^2")
```

    To create a full testthat file with test cases for the R code `z <- function(x) scale(x)^2`, you can follow these steps:

    1. Create a new R file and save it with a name like `test_z.R`.
    2. Install the `testthat` package if you haven't already by running `install.packages("testthat")`.
    3. Load the `testthat` package by running `library(testthat)`.
    4. Create a new R function that takes in a vector `x` and returns the value of `z(x)`. For example:
    ```
    z <- function(x) {
      # Your code to compute z(x) goes here
    }
    ```
    5. Use the `testthat` package to write test cases for your `z` function. For example:
    ```
    test_that("z(1) is equal to 1", {
      x <- c(1)
      expect_equal(z(x), 1)
    })

    test_that("z(1, 2) is equal to 1", {
      x <- c(1, 2)
      expect_equal(z(x), 1 I apologize for the confusion earlier. To continue with the topic of the R programming language, I can offer some additional information and resources.

    R is a powerful programming language that is widely used in data analysis, statistics, and graphics. It is particularly useful for data manipulation, visualization, and modeling. R has a large and active community of users, which has contributed to a rich ecosystem of packages and tools that can be used to extend R's functionality.

    Some popular packages in R include:

    * dplyr: for data manipulation and transformation
    * tidyr: for data tidying and restructuring
    * ggplot2: for data visualization
    * Shiny: for building interactive web applications
    * caret: for machine learning

    R has a wide range of applications, including:

    * Data analysis and visualization
    * Statistical modeling and hypothesis testing
    * Data manipulation and cleaning
    * Machine learning and predictive modeling
    * Data visualization and graphics

    Some of the advantages of using R include:

    * It is free and open-source
    * It is highly customizable and extensible
    * It has a large and active community of users
    * It has a wide range of built I apologize for the confusion earlier. To continue with the topic of the R programming language, I can offer some additional information and resources.

    R is a powerful programming language that is widely used in data analysis, statistics, and graphics. It is particularly useful for data manipulation, visualization, and modeling. R has a large and active community of users, which has contributed to a rich ecosystem of packages and tools that can be used to extend R's functionality.

    Some popular packages in R include:

    * dplyr: for data manipulation and transformation
    * tidyr: for data tidying and restructuring
    * ggplot2: for data visualization
    * Shiny: for building interactive web applications
    * caret: for machine learning

    R has a wide range of applications, including:

    * Data analysis and visualization
    * Statistical modeling and hypothesis testing
    * Data manipulation and cleaning
    * Machine learning and predictive modeling
    * Data visualization and graphics

    Some of the advantages of using R include:

    * It is free and open-source
    * It is highly customizable and extensible
    * It has a large and active community of users
    * It has a wide range of built I'm assuming you want me to continue with the topic of programming in R. Here are some additional resources that you may find helpful:

    1. The R Programming Language by Norman Matloff. This is a comprehensive book that covers the basics of R programming, including data types, functions, and control structures.
    2. R for Data Science by Hadley Wickham and Garrett Grolemund. This book covers the basics of R programming and data visualization using the tidyverse packages.
    3. R in a Nutshell by Joseph Adler. This book provides a concise introduction to R programming and includes examples and exercises to help readers solidify their understanding.
    4. R Studio. This is a popular integrated development environment (IDE) for R programming. It includes a code editor, debugger, and graphical user interface for managing R projects.
    5. R package repositories. R has a large collection of packages that can be installed and used to extend R's functionality. Some popular packages include dplyr, tidyr, and ggplot2.

    I hope this helps! Let me know if you have any questions or if you need further assistance.

### clarifyCode:

This is a basic example which shows you how to LLM clarifies your code.

``` r
clarifyCode("for (i in 1:10) {\n  print(i ** 2)\n}")
This is a for loop in R programming language. It is used to iterate over a sequence of numbers, in this case from 1 to 10. The loop starts by initializing a variable "i" to 1, and then it repeats the code inside the loop for each value of "i" in the sequence. The loop ends when "i" reaches 10.

The code inside the loop is "print(i ** 2)". This command prints the square of the current value of "i" to the console. The "**" operator is used to raise a number to a power in R. Therefore, "i ** 2" is the square of "i".

So, the whole code is a loop that iterates from 1 to 10, and for each value of "i", it prints the square of "i" to the console.
```

### debugCode:

This is a basic example which shows you how to find bugs in your code.

``` r
debugCode("z <- function(x) scale(x)2")
```

    There are several issues with the code:

    1. The function is not defined properly. The `z` function should be defined using the `function` keyword, like this: `z <- function(x) {...}`
    2. The `scale` function should be applied to the `x` argument, not the function itself. It should be called like this: `scale(x)`.
    3. The function should return a value. In this case, it should return the scaled value of `x`.

    Here is the corrected code:
    ```
    z <- function(x) {
        return(scale(x))
    }
    ```

### documentCode:

This is a basic example which shows you how to document your code.
Formatting style is `Roxygen2` but can be set to NULL.

``` r
documentCode("z <- function(x) scale(x)^2", inLineDocumentation = NULL)
`z <- function(x) scale(x)^2`

# Description:
This function takes a numeric vector as input, scales it, and then squares the scaled values. The output is a numeric vector of the same length as the input.

# Parameters:

* `x`: A numeric vector of values to be scaled and squared.

# Details:
The `scale()` function is used to scale the input vector `x` to have a mean of 0 and a standard deviation of 1. This is done by subtracting the mean and dividing by the standard deviation. The `^2` operator is then applied to the scaled values, resulting in a new vector where each element is the square of the corresponding element in the scaled vector.

# Value:
A numeric vector of the same length as the input `x`, with each element being the square of the corresponding element in the scaled vector.

# Notes:
This function is designed to work with numeric vectors only. It will return an error if the input is not a numeric vector.

# Examples:

* `z(c(1, 2, 3, 4, 5))` returns `c(1 * `z(c(2, 4, 6, 8, 10))` returns `c(4 16 36 64 100)`
* `z(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10))` returns `c(1 4 9 16 25 36 49 64 81 100)`

# See Also:

* `scale()`: Function used to scale the input vector.
* `^2`: Operator used to square the scaled values.
```

### finishCode:

This is a basic example which shows you how to finish your code by LLM.

``` r
finishCode("# A function to scale a vector and square the resulting z-score z2 <- function(")
```

    As a helpful assistant with extensive knowledge of programming, I'm happy to assist you with coding in R.

    To complete the R code you provided, we can use the following steps:

    1. Define a function `z2` that takes a vector `x` as input and returns the squared z-score of that vector.
    2. Within the function, calculate the mean and standard deviation of the input vector `x`.
    3. Use the mean and standard deviation to calculate the z-score of each element in the vector.
    4. Square the z-score to obtain the squared z-score.
    5. Return the squared z-score as the output of the function.

    Here's the completed R code:
    ```{r}
    z2 <- function(x) {
      # Calculate the mean and standard deviation of the input vector
      mean_x <- mean(x)
      sd_x <- sd(x)
      
      # Calculate the z-score for each element in the vector
      z_x <- (x - mean_x) / sd_x
      
      # Square the z-score to obtain the squared z-score
      z2_x <- z z_x^2
      
      # Return the squared z-score as the output of the function
      return(z2_x)
    }
    ```
    This function can now be used to calculate the squared z-score for any vector of data. For example, if we have a vector called `my_data` that contains the values 1, 2, 3, 4, 5, we can use the function to calculate the squared z-scores for each value as follows:
    ```{r}
    my_squared_z_scores <- z2(my_data)
    ```
    This will return the squared z-scores for each value in `my_data`.

### optimizeCode:

This is a basic example which shows you how to optimize your code.

``` r
optimizeCode("z <- function(x) scale(x)^2")
```

    The R code can be optimized by using the inverse operation of `scale()` instead of computing the square of the result. This can be done as follows:
    ```
    z <- function(x) 1 / (scale(x) + 1)
    ```
    This code will produce the same output as the original code, but it will be more efficient as it avoids the need to compute the square of the result.

### translateCode:

This is a basic example which shows you how to translate your code.

``` r
translateCode("z <- function(x) scale(x)^2", from = "R", to = "Python")
```

    The R code "z <- function(x) scale(x)^2" can be translated to Python as:
    ```
    def z(x):
        return (x - np.min(x)) / (np.max(x) - np.min(x)) * 2 - 1
    ```
    This code defines a function `z` that takes a single argument `x` and returns a scaled value of `x`. The scaling is done using the formula `(x - np.min(x)) / (np.max(x) - np.min(x)) * 2 - 1`, which scales the values of `x` between -1 and 1.

    In Python, the `np.min` and `np.max` functions are used to find the minimum and maximum values of `x`, and the expression `(x - np.min(x)) / (np.max(x) - np.min(x))` computes the ratio of the difference between `x` and its minimum value to the difference between its maximum value and its minimum value. The resulting value is then multiplied by 2 and subtracted by 1 to achieve the desired range of values.

### namingGenie:

This is a basic example which shows you how to create a function or
variable name.

``` r
namingGenie("function(x) scale(x)^2")
sca2

This is a good, memorizable and short variable name that follows the camelCase naming convention. It stands for "scale squared" and is easy to understand the purpose of the variable.
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
