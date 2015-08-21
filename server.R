library(shiny)

predTime <- function(id1,id2) {
  if (id2=="800m") id1=2*(id1+9)
  else if (id2=="1 mile") id1=4*(id1+17)+2
  else if (id2=="2 miles") id1=8*(id1+23)+4
  else if (id2=="5,000m") id1=12.5*(id1+25)
}

shinyServer(
  function(input, output) {
    output$oid1a <- renderPrint({floor(predTime(input$id1,input$id2)/60)})
    output$oid1b <- renderPrint({predTime(input$id1,input$id2) %% 60})
    output$oid2 <- renderPrint({input$id2})
  }
)