
<!-- README.md is generated from README.Rmd. Please edit that file -->

# perplexR

<!-- badges: start -->
[![CRAN
status](https://www.r-pkg.org/badges/version/perplexR)](https://CRAN.R-project.org/package=perplexR)
[![CRAN
downloads](https://cranlogs.r-pkg.org/badges/perplexR)](https://cran.rstudio.com/web/packages/perplexR/index.html)
[![R-CMD-check](https://github.com/GabrielKaiserQFin/perplexR/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/GabrielKaiserQFin/PerplexR/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The objective of `perplexR` is to offer R users an intuitive interface
for leveraging the capabilities of the Perplexity API [Pro
subscription](https://docs.perplexity.ai/docs/pricing). Utilizing the
supplied functions, users can enhance their programming productivity by
incorporating Large Language Models. Furthermore, `perplexR` includes
RStudio add-ins, enabling seamless interactive integration of Perplexity
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
.Renviron file, by executing `usethis::edit_r_environ()` and add the
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

### Addin:

In RStudio go to **Addins** and select **Ask Large Language Model**,
which will open an interactive prompt in your Viewer, where you can
choose between different Large Language Models and adjust the
temperature and the number of tokens to be used. Just ask anything of
you interest and hit the confirm button. The **Done** button lets you
close the app. Similarly, you can mark or copy any text or code and use
the other add-ins as described below. Add-in shortcuts will improve your
efficiency even further.

### AskMe:

This is a basic example which shows you how to ask any question.

``` r
AskMe("What do you think about Large language models?")
[1] "I believe large language models are incredibly advanced and capable tools for natural language processing. They can understand and generate human-like text, answer questions, and even carry on conversation with a degree of fluency and accuracy that was previously unimaginable. These models can be useful in various applications such as customer service, content creation, language translation, and education. However, it's important to note that they are not perfect and may sometimes generate incorrect or misleading information. They also lack the ability to truly understand context or emotions in the same way that humans do. Overall, I find large language models to be fascinating and valuable advances in artificial intelligence."
```

### rewriteText:

This is a basic example which shows you how to rewrite text.

``` r
rewriteText("Dear Recipient, I hope this message finds you well.")
[1] "Dear Recipient,"                                                
[2] ""                                                               
[3] "I trust this message finds you in good health and high spirits."
```

### translateText:

This is a basic example which shows you how to translate text.

``` r
translateText("Dear Recipient, I hope this message finds you well.", toLanguage = "Spanish")
[1] "Certainly! The Spanish translation for \"Dear Recipient, I hope this message finds you well.\" is \"Querido receptor, espero que esta carta lo encuentre bien.\""
```

### annotateCode:

This is a basic example which shows you how to annotate code.

``` r
annotateCode("z <- function(x) scale(x)^2")
[1] "# Function named z, takes one argument x"                      
[2] "# Applies element-wise scaling to x using the scale() function"
[3] "# Returns the square of each scaled element"                   
[4] "z <- function(x) scale(x)^2"                                   
```

### buildUnitTests:

This is a basic example which shows you how to build Unit Tests for your
function.

``` r
buildUnitTests("z <- function(x) scale(x)^2")
 [1] "I'd be happy to help you create a testthat file for your `z` function. Here's an example of how you could write tests using testthat version 3.0.0 or higher. Make sure you have the testthat package installed before running the code."                                                                                                                                                                                 
 [2] ""                                                                                                                                                                                                                                                                                                                                                                                                                         
 [3] "```R"                                                                                                                                                                                                                                                                                                                                                                                                                     
 [4] "# Test file for z function"                                                                                                                                                                                                                                                                                                                                                                                               
 [5] "# require the testthat package"                                                                                                                                                                                                                                                                                                                                                                                           
 [6] "test_that(\"Testing the z function\", {"                                                                                                                                                                                                                                                                                                                                                                                  
 [7] "  # test that the function takes one argument"                                                                                                                                                                                                                                                                                                                                                                            
 [8] "  test_that(\"z function takes one argument\", {"                                                                                                                                                                                                                                                                                                                                                                         
 [9] "    expect_error( func = z, args = list(list(1), 2), message = \"argument is missing, with no default\" )"                                                                                                                                                                                                                                                                                                                
[10] "  })"                                                                                                                                                                                                                                                                                                                                                                                                                     
[11] "  "                                                                                                                                                                                                                                                                                                                                                                                                                       
[12] "  # test that scales the input and then squares it"                                                                                                                                                                                                                                                                                                                                                                       
[13] "  test_that(\"Function applies scale and then squares\", {"                                                                                                                                                                                                                                                                                                                                                               
[14] "    x <- rnorm(10)"                                                                                                                                                                                                                                                                                                                                                                                                       
[15] "    z_result <- z(x)"                                                                                                                                                                                                                                                                                                                                                                                                     
[16] ""                                                                                                                                                                                                                                                                                                                                                                                                                         
[17] "    # test that the result has the same length as input"                                                                                                                                                                                                                                                                                                                                                                  
[18] "    expect_that(length(z_result) == length(x), \"Results have different lengths\")"                                                                                                                                                                                                                                                                                                                                       
[19] ""                                                                                                                                                                                                                                                                                                                                                                                                                         
[20] "    # test that the results are within expected bounds"                                                                                                                                                                                                                                                                                                                                                                   
[21] "    expect_that(all(z_result >= 0), \"All results are not greater than or equal to 0\")"                                                                                                                                                                                                                                                                                                                                  
[22] ""                                                                                                                                                                                                                                                                                                                                                                                                                         
[23] "    # test that the expected scaling is present"                                                                                                                                                                                                                                                                                                                                                                          
[24] "    expected_result <- sapply(x, function(x) scale(x)^2)"                                                                                                                                                                                                                                                                                                                                                                 
[25] "    expect_that(all.equal(z_result, expected_result), \"Function does not correctly compute scaling and squaring\")"                                                                                                                                                                                                                                                                                                      
[26] "  })"                                                                                                                                                                                                                                                                                                                                                                                                                     
[27] "})"                                                                                                                                                                                                                                                                                                                                                                                                                       
[28] "```"                                                                                                                                                                                                                                                                                                                                                                                                                      
[29] ""                                                                                                                                                                                                                                                                                                                                                                                                                         
[30] "This test file includes checks for the function taking one argument and the expected inputs and outputs using the `test_that` and `expect_that` functions. The first test case checks that the function takes one argument and throws an error when given a list of arguments. The second test case scales the input using the `scale()` function and then squares it to check if the output matches the expected result."
```

### clarifyCode:

This is a basic example to clarify your code.

``` r
clarifyCode("for (i in 1:10) {\n  print(i ** 2)\n}")
 [1] "This code is written in R programming language. It uses a `for` loop to iterate through a sequence of numbers from 1 to 10 (inclusive). The `1:10` expression generates a sequence of numbers from 1 to 10 that can be used with the `for` loop."
 [2] ""                                                                                                                                                                                                                                                
 [3] "Inside the `for` loop, there is a statement `print(i ** 2)`. This statement uses the `print` function to output the result of raising the current value of `i` to the power of 2."                                                               
 [4] ""                                                                                                                                                                                                                                                
 [5] "So, in total, the `for` loop will execute 10 times and will print the square of each number from 1 to 10 to the console."                                                                                                                        
 [6] ""                                                                                                                                                                                                                                                
 [7] "Here is the calculation for the first few iterations of the loop:"                                                                                                                                                                               
 [8] "- Iteration 1: i is 1, print(1^2) = print(1) or print(1)"                                                                                                                                                                                        
 [9] "- Iteration 2: i is 2, print(2^2) = print(4)"                                                                                                                                                                                                    
[10] "- Iteration 3: i is 3, print(3^2) = print(9)"                                                                                                                                                                                                    
[11] "- And so on, until i is 10 and print(10^2) = print(100)"                                                                                                                                                                                         
[12] ""                                                                                                                                                                                                                                                
[13] "When the loop is completed, the output will be the sequence of squares of numbers from 1 to 10, displayed one per line on the console in R. The final output will look something like this:"                                                     
[14] ""                                                                                                                                                                                                                                                
[15] "1"                                                                                                                                                                                                                                               
[16] "4"                                                                                                                                                                                                                                               
[17] "9"                                                                                                                                                                                                                                               
[18] "16"                                                                                                                                                                                                                                              
[19] "25"                                                                                                                                                                                                                                              
[20] "36"                                                                                                                                                                                                                                              
[21] "49"                                                                                                                                                                                                                                              
[22] "64"                                                                                                                                                                                                                                              
[23] "81"                                                                                                                                                                                                                                              
[24] "100"                                                                                                                                                                                                                                             
```

### debugCode:

This is a basic example which shows you how to find bugs in your code.

``` r
debugCode("z <- function(x) scale(x)2")
 [1] "The given code snippet is not valid R code and cannot be executed as it is due to several issues:"                                                                                                                                                                                                                                                                                                                                                                                                                                         
 [2] ""                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
 [3] "1. The function name `z` should be given a descriptive name following R naming conventions, which should start with a letter and only contain letters, digits, underscores or periods."                                                                                                                                                                                                                                                                                                                                                    
 [4] "2. The function definition is missing the opening and closing parentheses `()` which indicate the function arguments."                                                                                                                                                                                                                                                                                                                                                                                                                     
 [5] "3. The `scale()` function is a built-in R function that scales data by subtracting the mean and dividing by the standard deviation. The result of `scale()` is a matrix where each column is the scaled version of the corresponding input. In your given code, the result of `scale()` would be squared before it is returned from the function, which does not make much sense since `scale()` itself already transforms the data. If you want to apply a square transformation after scaling, you should write the function as follows:"
 [6] ""                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
 [7] "```R"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
 [8] "square_scale <- function(x) {"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
 [9] "  scaled <- scale(x)"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
[10] "  scaled^2"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
[11] "}"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
[12] "```"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
[13] ""                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
[14] "So you could change your function definition to `square_scale()`."                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
```

### documentCode:

This is a basic example which shows you how to document your code.
Formatting style is `Roxygen2` but can be set to NULL.

``` r
documentCode("z <- function(x) scale(x)^2", inLineDocumentation = NULL)
 [1] "```R"                                                                                                                    
 [2] "#' @title SquareFunction"                                                                                                
 [3] "#' @description This function computes the square of each element in a given vector."                                    
 [4] "#' @param x A numeric vector."                                                                                           
 [5] "#' @return A numeric vector of the same length as x, where each element is the square of the corresponding element in x."
 [6] "#' @examples"                                                                                                            
 [7] "#' # Square the vector x"                                                                                                
 [8] "#' square_x <- z(c(1, 2, 3, 4))"                                                                                         
 [9] "#' # Print the result"                                                                                                   
[10] "#' print(square_x)"                                                                                                      
[11] ""                                                                                                                        
[12] "z <- function(x) {"                                                                                                      
[13] "  # Perform element-wise squaring"                                                                                       
[14] "  scale(x)^2"                                                                                                            
[15] "}"                                                                                                                       
[16] "```"                                                                                                                     
```

### finishCode:

This is a basic example which shows you how to finish your code.

``` r
finishCode("# A function to scale a vector and square the resulting z-score z2 <- function(")
 [1] "x) {"                                                                                   
 [2] "# Calculate the mean and standard deviation of the input vector"                        
 [3] "mean_x <- mean(x)"                                                                      
 [4] "sd_x <- sd(x)"                                                                          
 [5] ""                                                                                       
 [6] "# Scale the input vector by subtracting the mean and dividing by the standard deviation"
 [7] "scaled_x <- (x - mean_x) / sd_x"                                                        
 [8] ""                                                                                       
 [9] "# Square the z-scores"                                                                  
[10] "z_scores_squared <- scale(x, center = mean_x, scale = sd_x, std = FALSE) ^ 2"           
[11] ""                                                                                       
[12] "# Return the squared z-scores as a numeric vector"                                      
[13] "return(as.numeric(z_scores_squared))"                                                   
[14] "}"                                                                                      
[15] ""                                                                                       
[16] "# The completed function named 'z2' scales a vector and squares the resulting z-scores."
```

### optimizeCode:

This is a basic example which shows you how to optimize your code.

``` r
optimizeCode("z <- function(x) scale(x)^2")
 [1] "In R, you can optimize the function `z<-function(x) scale(x)^2` by using the `vectorize()` function from the `base` or `apply` package to apply the `scale()` and power operation element-wise, avoiding the need for a loop or recursion. Here is the optimized version:"
 [2] ""                                                                                                                                                                                                                                                                         
 [3] "1. Using the `apply` family of functions:"                                                                                                                                                                                                                                
 [4] ""                                                                                                                                                                                                                                                                         
 [5] "```R"                                                                                                                                                                                                                                                                     
 [6] "library(apply)"                                                                                                                                                                                                                                                           
 [7] "z <- function(x) {"                                                                                                                                                                                                                                                       
 [8] "  x_scaled <- scale(x)"                                                                                                                                                                                                                                                   
 [9] "  x_scaled^2"                                                                                                                                                                                                                                                             
[10] "}"                                                                                                                                                                                                                                                                        
[11] ""                                                                                                                                                                                                                                                                         
[12] "# Check computation time for both versions"                                                                                                                                                                                                                               
[13] "microbenchmark(normal_func = function(x) scale(x)^2,"                                                                                                                                                                                                                     
[14] "              optimized_func = function(x) {"                                                                                                                                                                                                                             
[15] "                x_scaled <- scale(x)"                                                                                                                                                                                                                                     
[16] "                x_scaled^2"                                                                                                                                                                                                                                               
[17] "              })"                                                                                                                                                                                                                                                         
[18] ""                                                                                                                                                                                                                                                                         
[19] "# Result: The optimized function is faster"                                                                                                                                                                                                                               
[20] "```"                                                                                                                                                                                                                                                                      
[21] ""                                                                                                                                                                                                                                                                         
[22] "2. Using the `vectorize()` function from the base R package:"                                                                                                                                                                                                             
[23] ""                                                                                                                                                                                                                                                                         
[24] "```R"                                                                                                                                                                                                                                                                     
[25] "# Base R version of the optimized function"                                                                                                                                                                                                                               
[26] "z <- Vectorize(\\(x) { scale(x)^2 }, \"nc\")"                                                                                                                                                                                                                             
[27] ""                                                                                                                                                                                                                                                                         
[28] "# Check computation time for both versions:"                                                                                                                                                                                                                              
[29] ""                                                                                                                                                                                                                                                                         
[30] "```R"                                                                                                                                                                                                                                                                     
[31] "microbenchmark(normal_func = function(x) scale(x)^2,"                                                                                                                                                                                                                     
[32] "              optimized_func = z)"                                                                                                                                                                                                                                        
[33] ""                                                                                                                                                                                                                                                                         
[34] "# Result: The optimized function is faster"                                                                                                                                                                                                                               
[35] "```"                                                                                                                                                                                                                                                                      
[36] ""                                                                                                                                                                                                                                                                         
[37] "By using the `vectorize()` function or the `apply` functions, we apply the specified operations (in this case, `scale()` and power) to the input data (`x`) element-wise, significantly reducing the computational time of the function."                                 
```

### translateCode:

This is a basic example which shows you how to translate your code from
`R` to `Python`.

``` r
translateCode("z <- function(x) scale(x)^2", from = "R", to = "Python")
 [1] "In Python, you can define an anonymous function (similar to R's `function`) using `lambda` function. The given R code can be translated into Python as:"                                                                                                                       
 [2] ""                                                                                                                                                                                                                                                                              
 [3] "```python"                                                                                                                                                                                                                                                                     
 [4] "import numpy as np"                                                                                                                                                                                                                                                            
 [5] ""                                                                                                                                                                                                                                                                              
 [6] "def z(x):"                                                                                                                                                                                                                                                                     
 [7] "    return np.power(np.abs(np. scales(x)), 2)"                                                                                                                                                                                                                                 
 [8] "```"                                                                                                                                                                                                                                                                           
 [9] ""                                                                                                                                                                                                                                                                              
[10] "However, it's important to note that there isn't a direct equivalent to R's `scale()` function in NumPy. To obtain a similar result, it's recommended to use scipy.stats.scalef for scaling data with zero mean and standard deviation of one. Here's the updated Python code:"
[11] ""                                                                                                                                                                                                                                                                              
[12] "```python"                                                                                                                                                                                                                                                                     
[13] "import numpy as np"                                                                                                                                                                                                                                                            
[14] "from scipy.stats import scale"                                                                                                                                                                                                                                                 
[15] ""                                                                                                                                                                                                                                                                              
[16] "def z(x):"                                                                                                                                                                                                                                                                     
[17] "    return np.power(np.abs(scale(x).ravel()), 2)"                                                                                                                                                                                                                              
[18] "```"                                                                                                                                                                                                                                                                           
[19] ""                                                                                                                                                                                                                                                                              
[20] "Keep in mind that the input should be passed as a NumPy array for this to work correctly."                                                                                                                                                                                     
[21] ""                                                                                                                                                                                                                                                                              
[22] "If you'd prefer to stick with NumPy without using scipy.stats, you'll need to implement other approaches for scaling like Z-score normalization before applying the power operation."                                                                                          
```

### namingGenie:

This is a basic example which shows you how to create a function or
variable name.

``` r
namingGenie("function(x) scale(x)^2")
[1] "Based on the given function and naming convention, a good, memorizable, and short variable name could be `squareScale` or `scaledSquaredValue`. Both names convey the purpose of the function, which is to scale a value by squaring it."
```

## Perplexity Model Arguments

The parameters of perplexity models can be adjusted by passing
functional arguments.

- `text` or `code`: The text or code input required for processing by
  Large Language Model. If omitted, the function will utilize the
  content currently held in the clipboard.

- `PERPLEXITY_API_KEY`: The PERPLEXITY API key. By default it is set to
  `Sys.getenv("PERPLEXITY_API_KEY")`.

- `modelSelection`: Default is `"mistral-7b-instruct"` but other
  available [models](https://docs.perplexity.ai/docs/model-cards) are:
  `"mixtral-8x7b-instruct"`, `"codellama-70b-instruct"`,
  `"sonar-small-chat"`, `"sonar-small-online"`, `"sonar-medium-chat"`,
  `"sonar-medium-online"`

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
