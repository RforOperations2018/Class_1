# Class 2
# In Class Examples - Tabset

library(shiny)
library(reshape2)
library(dplyr)
library(plotly)
library(DT)

starwars <- starwars
starwars$films <- NULL
starwars$vehicles <- NULL
starwars$starships <- NULL
meltwars <- melt(starwars, id = "name")
meltwars$name <- as.factor(meltwars$name)

pdf(NULL)

# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("Star Wars Tabset")

)

# Define server logic
server <- function(input, output) {
}

# Run the application 
shinyApp(ui = ui, server = server, session = session)

