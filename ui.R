shinyUI(fluidPage(
  titlePanel("This is a Mola mola fish."),
  fluidRow(
  mainPanel(
    sliderInput("slider", "Take a moment to appreciate this really neat fish. You can
                use the slider to make the picture larger or smaller depending on your
                level of enthusiasm.",
                max = 300, 
                min = 1,
                value = 150,
                round = FALSE,
                ticks = FALSE,
                locale = "us"),
    uiOutput("logo"),
            h3("Take a guess at a few questions about Mola mola."),
               h4("At the end, click the button to check your answers."),
            radioButtons("q1", "What is another name for the Mola mola?", 
                         list("No answer" = 0.001, "Ocean Sunfish" = 1, "Giant Sunfish" = 0, "Oops" = 0, "Ocean Tuna" = 0),
                         selected = 0.001),
            radioButtons("q2", "What is the heaviest recorded Mola mola?", 
                         list("No answer" = 0.001, "506 kg" = 0, "4100 kg" = 0, "2300 kg" = 1, "125 kg" = 0),
                         selected = 0.001),
            radioButtons("q3", "What avoidable hazard to humans pose to Mola mola?",
                         list("No answer" = 0.001, "Sneezing" = 0, "Swimming in the ocean" = 0, "Keeping them as house pets" = 0, "Polluting the ocean with plastic bags that make them suffocate and starve" = 1),
                         selected = 0.001),
            radioButtons("q4", "To which order to Mola mola belong?", 
                         list("No answer" = 0.001, "Tetraodontiformes" = 1, "Anguilliformes" = 0, "Cypriniformes" = 0, "Perciformes" = 0),
                         selected = 0.001),
            radioButtons("q5", "What is the English translation of the Chinese name for Mola mola?", 
                         list("No answer" = 0.001, "Large grey fish" = 0, "Toppled car fish" = 1, "Sunfish" = 0, "Jellyfish eater" = 0),
                         selected = 0.001),
            actionButton('submit', "Check your answers!"),
            p("Here's what you scored:"), 
            h2(textOutput("final_score"), style = "color:blue"))
      
    ),
    mainPanel()
  )
)
