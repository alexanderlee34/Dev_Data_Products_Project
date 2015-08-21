library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Predicting Your Running Time"),
  sidebarPanel(
    sliderInput("id1", "Enter your 400m run time in seconds", value=60, min=40, max=300, step=1),
    radioButtons("id2", "Choose one of the following running distances",
                   c("800m" = "800m",
                     "1 mile" = "1 mile",
                     "2 miles" = "2 miles",
                     "5,000m" = "5,000m")),
    submitButton("Submit")
    ),
    mainPanel(
      h3("Prediction"),
      h4("You chose:"),
      verbatimTextOutput("oid2"),
      h4("Your predicted time for the chosen distance is:"),
      verbatimTextOutput("oid1a"),
      h4("Minutes and"),
      verbatimTextOutput("oid1b"),
      h4("Seconds")
    )
  ))