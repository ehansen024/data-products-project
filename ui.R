##library(help = "datasets")
##data(trees)
##head(trees)
##m1 <- lm(Volume ~ Girth + Height, data = trees)
##summary(m1)

##setwd("C:/Users/Owner/Desktop/Coursera/ShinyProject")

library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Predicting Volume of Timber"),
  sidebarPanel(
    "The following function predicts the amount of timber available from a tree using the following linear model:",
    br(),
    br(),
    em("Volume = 4.7082*Girth + 0.3393*Height - 57.9877.", align = "center", style = "color:blue"),
    br(),
    br(),
    "Please enter the information below to receive your prediction.",
    br(),
    br(),
    numericInput('Height', 'Height in feet', median(trees$Height), min = min(trees$Height), max = max(trees$Height), step = 0.5),
    submitButton('Submit'),
    numericInput('Girth', 'Diameter in inches', median(trees$Girth), min = min(trees$Girth), max = max(trees$Girth), step = 0.5),
    submitButton('Submit')  
  ),
  mainPanel(
    h3('Expected Volume of Timber'),
    h4('Your tree has a height of'),
    verbatimTextOutput("inputHeight"),
    h4('feet, and diameter of'),
    verbatimTextOutput("inputGirth"),
    h4('inches. You can expect this tree to yield'),
    verbatimTextOutput("prediction"),
    h4('cubic feet of timber.')
  )
))

##library(shinyapps)
##shinyapps::deployApp('C:/Users/Owner/Desktop/Coursera/ShinyProject')
