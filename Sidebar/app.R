# Class 2
# In Class Examples - Sidebar

library(shiny)
library(reshape2)
library(dplyr)
library(plotly)
library(shinythemes)

starwars <- starwars
starwars$films <- NULL
starwars$vehicles <- NULL
starwars$starships <- NULL
meltwars <- melt(starwars, id = "name")
meltwars$name <- as.factor(meltwars$name)

pdf(NULL)

# Define UI for application that draws a histogram
ui <- fluidPage(
  tags$link(rel = "stylesheet", type = "text/css", href = "bootstrap.css"),
   # Application title
   titlePanel("Star Wars Sidebar")
)

# Define server logic required to draw a histogram
server <- function(input, output) {

}

# Run the application 
shinyApp(ui = ui, server = server)