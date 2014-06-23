shinyServer(function(input, output) {
   
  output$final_score = renderText({
     input$submit
     paste(isolate(round(as.numeric(input$q1) + as.numeric(input$q2) + 
      as.numeric(input$q3) + as.numeric(input$q4) +
      as.numeric(input$q5),1)) , "/5")
      })
  
  output$logo = renderUI({
    img(src = "mola.jpg", width = input$slider*30)
  })
  
  
})