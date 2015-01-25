library(shiny)
library(datasets)
data(mtcars
     )
shinyServer(function(input, output) {
  output$plotDisplay<-renderPlot({plot(mtcars[,input$factor], mtcars$mpg, ylab="Miles Per Gallon", xlab=input$factor)})})
    