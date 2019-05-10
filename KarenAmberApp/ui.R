#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a Scatterplot
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Rice Trait Scatterplot"),
  
  helpText("This application creates a scatterplot comparing two different rice traits. Choose a trait for the x and y axis, as well as a color trait, which will be represented by the dot color. Adjust the size of the point using the slider."),
  # Sidebar with a slider input for traits 
  sidebarLayout(
    sidebarPanel(
       radioButtons("trait1",
                   "choose an X axis trait:",
                   c("Seed number per panicle" = "`Seed number per panicle`", "Flag leaf width"= "`Flag leaf width`", "Flag leaf length" = "`Flag leaf length`", "Plant height" = "`Plant height`", "Seed length" = "`Seed length`","Seed width" =  "`Seed width`")),
      radioButtons("trait2",
                     "choose a Y axis trait:",
                     c("Seed number per panicle" = "`Seed number per panicle`", "Flag leaf width"= "`Flag leaf width`", "Flag leaf length" = "`Flag leaf length`", "Plant height" = "`Plant height`", "Seed length" = "`Seed length`","Seed width" = "`Seed width`")),
      radioButtons("trait3",
                   "choose a color trait:", 
                   c("Seed number per panicle" = "`Seed number per panicle`", "Flag leaf width"= "`Flag leaf width`", "Flag leaf length" = "`Flag leaf length`", "Plant height" = "`Plant height`", "Seed length" = "`Seed length`","Seed width" = "`Seed width`")
        ),
      sliderInput("dot_size", "Point Size:",
                  min = 0, max = 4,
                  value = 1, step = 1
                  )),
    
    # Show a plot of the generated scatterplot
    mainPanel(plotOutput("pointPlot")
    )
  )
))
