shinyServer(function(input, output) {

  
 output$text1 <- renderText({ 
#    "You have selected this"
    paste("Selected distribution is", input$select)
  })
  
  output$numbersims <- renderPlot({
    x    <- input$slider1  
    z <- rnorm(x)
    g <- rgamma(x, shape = 6, rate = 2)
    deg <- input$df
    bins <- input$slider2  
    
    t <- rt(x, df=deg)
    if(input$select == "Normal") {
      hist(z, breaks=bins , col = 'darkblue', border = 'white')
      } 
    else { if(input$select == "Student-t") {
      hist(t, breaks=bins , col = 'darkblue', border = 'white')  
    }
      else { hist(g, breaks=bins , col = 'darkblue', border = 'white')}
            }
    

    
    
  
  })
  
  

  
  
  
  })
