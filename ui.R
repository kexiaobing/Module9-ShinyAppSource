
library(shiny)

# Define UI for application
shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("Body Mass Index Calculator"),
        sidebarPanel(
            numericInput('weight', 'Your Weight(kg):', 60.0, min = 1.0, max = 200.0, step = 0.1),
            numericInput('height', 'Your height (meter):', 1.60, min = 0.50, max = 2.30, step = 0.01),
            submitButton('Submit')
        ),
        mainPanel(
            h3('Your Body Mass Index:'),
            verbatimTextOutput("BMIResult"),
            h5("  "),
            h5("     BMI < 18.5:   Underweight"),
            h5("18.5 < BMI < 25:   Normal"),
            h5("       BMI > 25:   Overweight"),
            h5("  "),
            h5("  "),
            h5("  "),
            h5("  "),
            h3("By following below steps to calculate your body mass index:"),
            h5("Step 1: Enter your weight in kilogram."),
            h5("Step 2: Enter your height in meter."),
            h5("Step 3: Click on button Submit."),
            h5("Step 4: Check the BMI calculation result at the right side.")
        )
    )
)