shinyUI(pageWithSidebar
        ( headerPanel("Loan calculator"), 
            sidebarPanel(
                sliderInput("Apr", "APR (%):",
                            min = 0, max = 100,
                            value = 0.10, step = 0.1), 
                
                sliderInput("Month", "Number of months:",
                            min = 0, max = 210,
                            value = 12, step = 1),
                
                sliderInput("Amt", "Loan Amount:",
                            min = 0, max = 10000,
                            value = 500, step = 100 ), 
                
                ),
            
            
    mainPanel(
        p('Monthly Interest %'), 
        textOutput('text1'),
       
         p('Number of months'),
        textOutput('text2'),
        
        p('Loan Amount'),
        textOutput('text3'),
        
        p('Monthly Payment'),
        textOutput('text4'),
    ) ))

