library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage( #create the overall page
  
  # Application title
  titlePanel("Iris Data"),
  
  # Some helpful information
  helpText("This application creates a boxplot to show difference between",
           "iris species.  Please use the radio box below to choose a species",
           "for plotting"),
  
  # Sidebar with a radio box to input which species will be plotted
  sidebarLayout(
    sidebarPanel(
      radioButtons("Species", #the input variable that the value will go into
                   "Choose a species to display:",
                   c("setosa",
                     "versicolor",
                     "virginica")
      )),
    
    # Show a plot of the generated distribution
    mainPanel(plotOutput("boxPlot")
    )
  )
))