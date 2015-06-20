
shinyServer(
  function(input, output) { 
    output$text1 <- renderText(
      if ({input$m} == 1){
        if (input$S == 1) {HR = 220 - input$Age}
        else {HR = round(206 - 0.88*{input$Age})}
       }
      else { 
      if ({input$m} == 2) {HR = round(206.3 - 0.711*{input$Age})}
      else {HR = round(217 - 0.85*{input$Age})}
      }
  
      )
}
)