#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
library(tidyverse)

data.pheno <- read_csv("./rice.pheno.csv",
                       na=c("NA","00")) #this tells R that missing data is denoted as "NA" or "00"

# Define server logic required to draw a scatter plot
shinyServer(function(input, output) {
   
  output$pointPlot <- renderPlot({
    pl <- ggplot(data = data.pheno, aes_string(x = input$trait1, #choose a trait for the x axis 
                                               y = input$trait2, #choose a trait for the y axis
                                               color = input$trait3 #choose a trait for a color overlay
                                               )) 
    pl + geom_point(size = input$dot_size) #make a scatter plot 
    
    
    
  })
  
})
