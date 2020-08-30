shinyUI(pageWithSidebar
        ( headerPanel("Monthly Loan Payment Calculator -> Set your APR (Annual percentage rate), loan duration and loan amount! "), 
            sidebarPanel(
                sliderInput("Apr", "APR % (Annual percentage rate):",
                            min = 0, max = 100,
                            value = 0.10, step = 0.1), 
                
                sliderInput("Month", "Loan duration (in number of months):",
                            min = 0, max = 210,
                            value = 12, step = 1),
                
                sliderInput("Amt", "Loan Amount:",
                            min = 0, max = 10000,
                            value = 500, step = 100 ), 
                
                ),
            
            
    mainPanel(
        p('Monthly Payment Required'),
        textOutput('text4'),
    ) ))

