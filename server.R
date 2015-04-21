
library(shiny)

# Define server logic
BMICal <- function(weight, height) round((weight / (height * height)), digits = 1)
shinyServer(
    function(input, output) {
        output$BMIResult <- renderPrint({BMICal(input$weight, input$height)})
    }
)