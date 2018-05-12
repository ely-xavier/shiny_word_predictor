suppressMessages(library(shiny))

# Define UI for application that draws a histogram
shinyUI(pageWithSidebar(
  headerPanel("Data Science Capstone - Word Predictor"),
        sidebarPanel(
            h3("User input:"),
            br(),
            strong(""),
            textInput("impText", "Please type below the initial few words of your sentence:", value = "e.g., Ely, glad to see")
    ),
    
    
    mainPanel(tabsetPanel(
            tabPanel(
                    "Predicted output",
                    h4("Interpreted text:"),
                    verbatimTextOutput("clnText"),
                    
                    h4("Predicted word based on provided text:"),
                    verbatimTextOutput("nxtWord")
                    
            ),
            tabPanel(
                    "Read Me",
                    h4("Intro"),
                    p("People spends an ever increasing amount of time on their computers, especially on their mobile devices.
                        This trend has exacerbated the need for accurate, yet fast predictive word engines to faciliate typing and text editing on these
                        smaller devices."
                    ),
                    p("SwiftKey is one of the principal players in this market. And this Data Science capston project will be done thanks to the collaborative effort between
                      Swiftkey and Johns Hopkins University"),
                    br(),
                    
                    h4("App Features"),
                    p("Flexible: the backend algorithm has been developed to deal with many new ways of people writing on mobile phones, (e.g., talk 2 u later)"),
                    p("Speedy: Probabilistic assessments are pre-loaded before the execution of the algorithm. The app search the prepoluated tables and pulls the mostlikely word"),
                    p("Safe: The software removes profanities and bleeped words from the UI input and from the tables"),
                    p("Natural: Stopwords were left as these could be the expected next input in a text string from a user"),
                    br(),
                    
                    h4("Shiny App Interface"),
                    p("The UI contains a space for the user to input the text. And on the right panel, the Shiny app returns the last three words of the phrase and the predicted word on the provided space below."),
                    br(),
                    
                    h4("Shiny App Functionality"),
                    p("Step 1: If the user enters e.g. 'i love u to the', it is chopped to the last 3 words ('u to the')."),
                    p("Step 2: A search is done for a match to the chopped input."),
                    p("Step 3: If a match is found, the algorith skips to Step 4. Otherwise, the user input is 
                            shortened again ('to the', etc.), and the algorithm go back to Step 2."),
                    p("Step 4: If a match was found, it is returned to the user interface. Otherwise, the most 
                            frequent word in the corpora is returned."),
                    br(),
                    
                    h4("Source Code"),
                    p("All code and reference material can be found in the following
                      github", a("repo",href= "http://github.com/ely-xavier/Word_Predictor", target = "blank"),
                      "."
                    )
    )
    )
  )
))
