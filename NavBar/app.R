# Class 2
# In Class Examples - NavBar

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
   navbarPage("Star Wars NavBar",
              tabPanel("Plot 2 - The Plottening", icon = icon("line-chart"),
                       inputPanel(selectInput("charSelect",
                                              "Select Character(s):",
                                              choices = levels(meltwars$name),
                                              selectize = TRUE,
                                              multiple = TRUE,
                                              selected = "Darth Vader")))
   )
)

# Define server logic
server <- function(input, output) {

}

# Run the application 
shinyApp(ui = ui, server = server)
