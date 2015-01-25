library(shiny)

factors=c("Number of Cylinders"="cyl",
          "Displacement (cu. in.)"="disp",
          "Horsepower"="hp",
          "Rear Axle Ratio"="drat",
          "Weight"="wt",
          "1/4 mile time"="qsec",
          "V/S"="vs",
          "Transmission (0=automatic, 1=manual)"="am",
          "Number of Forward Gears"="gear",
          "Number of Carburetors"="carb")

shinyUI(pageWithSidebar(
  headerPanel("Gasoline Mileage in Relation to Other Factors"),
  sidebarPanel(radioButtons(inputId="factor", label="Factor", choices=factors), selected="cyl"),
  mainPanel(
    h3("Miles per Gallon for Selected Factor"),
    plotOutput("plotDisplay"),
    p("Click one of the radio buttons at left to see a different chart. Weight is in pounds/1000.
      The regression line is in red.
      Each chart is regenerated whenever you click a radio button.")
  )
))