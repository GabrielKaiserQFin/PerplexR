#' Run a Large Language Model as RStudio add-in
#'
#' @param FUN The function to be executed.
#'
#' @importFrom rstudioapi as.document_range getSourceEditorContext modifyRange
#'
execAddin <- function(FUN) {

  addinFUN <- switch(FUN,
    "rewriteText" = rewriteText,
    "annotateCode" = annotateCode,
    "finishCode" = finishCode,
    "buildUnitTests" = buildUnitTests,
    "namingGenie" = namingGenie,
    "documentCode" = documentCode,
    "clarifyCode" = clarifyCode,
    "debugCode" = debugCode,
    "optimizeCode" = optimizeCode,
    "translateCode" = translateCode,
    stop("`FUN` not found.")
  )
  # Get the current source editor context.
  input <- getSourceEditorContext()
  inputText <- input$selection[[1]]$text
  fileLength <- all(nchar(inputText) == 0)
  # If there is no selected text, get the entire contents of the editor.
  if(fileLength) {
    inputText <- input$contents
  }
  # Paste the text into a single string, separated by newlines.
  inputText <- paste0(inputText, collapse = "\n")

  # Returns output to console and clipboard
  return(addinFUN(inputText, maxTokens = 800))

}

runAddin_askMe <- function() execAddin_AskMe()
runAddin_rewriteText <- function() execAddin("rewriteText")
runAddin_annotateCode <- function() execAddin("annotateCode")
runAddin_finishCode <- function() execAddin("finishCode")
runAddin_buildUnitTests <- function() execAddin("buildUnitTests")
runAddin_namingGenie <- function() execAddin("namingGenie")
runAddin_commentCode <- function() execAddin("commentCode")
runAddin_clarifyCode <- function() execAddin("clarifyCode")
runAddin_debugCode <- function() execAddin("debugCode")
runAddin_optimizeCode <- function() execAddin("optimizeCode")
runAddin_translateCode <- function() execAddin("translateCode")


#' Ask Large Language Model
#'
#' Opens an interactive chat session with Large Language Model
#'
#' @importFrom miniUI gadgetTitleBar miniPage
#' @importFrom shiny actionButton br icon observeEvent onStop runGadget stopApp
#' @importFrom shiny textAreaInput numericInput sliderInput selectInput
#' @importFrom shiny updateTextAreaInput wellPanel splitLayout column
#' @importFrom utils getFromNamespace
#'
execAddin_AskMe <- function() {


  ui <- miniPage(wellPanel(
    # Sets the title.
    gadgetTitleBar("Ask the Large Language Model", NULL),
    #Sets the CSS style to have a horizontal scrollbar if the content overflows
    style = "overflow-x: scroll",
    # Add a line break in HTML.
    br(), br(),
    # Split the app in three columns and add inputs.
    splitLayout(
      column(
        12,
        selectInput("model", "Model:", c(
                          "mistral-7b-instruct",
                          "mixtral-8x7b-instruct",
                          "codellama-70b-instruct",
                          "sonar-small-chat",
                          "sonar-small-online",
                          "sonar-medium-chat",
                          "sonar-medium-online"
        ))
      ),
      column(
        12,
        sliderInput("temperature", "Temperature:",
          min = 0, max = 2,
          value = 1, step = 0.1
        )
      ),
      column(
        12,
        numericInput("maxTokens", "max Tokens:", 265,
          min = 10, max = 10000
        )
      ),
      cellWidths = c("40%", "45%", "15%")
    ),
    # Add a line break in HTML.
    br(), br(),
    # Add text input panel.
    textAreaInput("question", "Question:", width = "100%", height = "150px"),
    # Add action button.
    actionButton("Ask", "", icon("terminal")),
    # Add a line break in HTML.
    br(), br(),
    # Add text output panel.
    textAreaInput("response", "Response:", width = "100%", height = "150px")
  ))

  server <- function(input, output, session) {
    # This line sets up an observer for the `Ask` button.
    observeEvent(input$Ask, {
      chatResponse <- AskMe(input$question, modelSelection = input$model,
                            maxTokens = input$maxTokens,
                            temperature = input$temperature)
      updateTextAreaInput(session, "response", value = chatResponse)
    })
    # This line sets up an observer for the `done` button.
    observeEvent(input$done, {
      stopApp()
    })
  }

  runGadget(ui, server)
}
