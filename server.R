m1 <- function(Girth, Height) 4.7082*Girth + 0.3393*Height - 57.9877

library(shiny)
shinyServer(
  function(input, output) {
    output$inputHeight <- renderPrint({input$Height})
    output$inputGirth <- renderPrint({input$Girth})
    output$prediction <- renderPrint({m1(input$Girth, input$Height)})
  }
)
