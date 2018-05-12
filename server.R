#

suppressMessages(library(shiny))

shinyServer(function(input, output) {
        # this waits for the user input
        Sys.sleep(0.1)
        
        cleanText <- reactive({
                prepareText(input$impText, 3)
        })
        output$clnText <- renderText({
                paste("...", cleanText())
        })
        
        # predicted word
        nextWord <- reactive({
                predictWord(cleanText())
        })
        output$nxtWord <- renderText({
                nextWord()
        })
        
})