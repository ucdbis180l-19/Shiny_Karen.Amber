#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Rice Trait Scatterplot"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       radioButtons("trait1",
                   "choose an X axis trait:",
                   c("Leaf pubescence", "Flag leaf width", "Flag leaf length", "Plant height", "Seed length", "Seed width")),
      radioButtons("trait2",
                     "choose a Y axis trait:",
                     c("Leaf pubescence", "Flag leaf width", "Flag leaf length", "Plant height", "Seed length", "Seed width")),
      radioButtons("trait3",
                   "choose a color trait:", 
                   c("Leaf pubescence", "Flag leaf width", "Flag leaf length", "Plant height", "Seed length", "Seed width")
        )),
      
    # Show a plot of the generated distribution
    mainPanel(plotOutput("pointPlot")
    )
  )
))
