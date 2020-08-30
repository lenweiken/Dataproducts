
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
            
        

        output$text4 <- renderText({a() })
    }
)
