
monthly_pay <- function(loan, time, int){
    return(loan*(int*((1+int)^time))/(((1+int)^time )- 1))
}


library(shiny) 
shinyServer(
    function(input, output) {
        x <- reactive({as.numeric(input$Apr)} / 12)
        y <- reactive({as.numeric(input$Month)})
        z <- reactive({as.numeric(input$Amt)})
        a <- reactive(
            ({as.numeric(input$Amt)} * {as.numeric(input$Apr)} / 100 / 12) /  
                (1 - 
                     (1 + ({as.numeric(input$Apr)} / 100 / 12))^{-as.numeric(input$Month)} )
            
            
            )   
            
        
        output$text1 <- renderText({x() })
        output$text2 <- renderText({y() })
        output$text3 <- renderText({z() })
        output$text4 <- renderText({a() })
    }
)



# output$text2 <- renderText({x() / 100 / 12})

# output$text4 <- renderText({ (x()) })

# Numerator <- reactive({as.numeric(input$Apr)} / 100 / 12 * renderText({z() }))
# Denominator <- reactive((1 - {as.numeric(input$Apr)})^-renderText({y()}))
# a <- reactive(renderText({Numerator()} / renderText({Denominator()} )))




#x <- reactive({as.numeric(input$Apr)} / 12)
#y <- reactive({as.numeric(input$Month)})
#z <- reactive({as.numeric(input$Amt)})
#a <- reactive({as.numeric(input$Amt)} / {as.numeric(input$Month)}        )