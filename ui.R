shinyUI(fluidPage(
  titlePanel("This is a Mola mola fish."),
  fluidRow(
  mainPanel(
    sliderInput("slider", "Take a moment to appreciate this really neat fish. You can
                use the slider to make the picture larger or smaller depending on your
                level of enthusiasm.",
                max = 10, 
                min = 1,
                value = 1),
    uiOutput("logo"),
            h3("Take a guess at a few questions about Mola mola."),
               h4("At the end, click the button to check your answers."),
            radioButtons("q1", "What is another name for the Mola mola??", 
                         list("Ocean Sunfish" = 1, "Giant Sunfish" = 0, "Oops" = 0, "Ocean Tuna" = 0),
                         selected = "Ocean Sunfish"),
            radioButtons("q2", "What is the heaviest recorded Mola mola?", 
                         list("506 kg" = 0, "4100 kg" = 0, "2300 kg" = 1, "125 kg" = 0),
                         selected = "506 kg"),
            radioButtons("q3", "What avoidable hazard to humans pose to Mola mola?",
                         list("Sneezing" = 0, "Swimming in the ocean" = 0, "Keeping them as house pets" = 0, "Polluting the ocean with plastic bags that make them suffocate and starve" = 1),
                         selected = "Sneezing"),
            radioButtons("q4", "To which order to Mola mola belong?", 
                         list("Tetraodontiformes" = 1, "Anguilliformes" = 0, "Cypriniformes" = 0, "Perciformes" = 0),
                         selected = "Tetraodontiformes"),
            radioButtons("q5", "What is the English translation of the Chinese name for Mola mola?", 
                         list("Large grey fish" = 0, "Toppled car fish" = 1, "Sunfish" = 0, "Jellyfish eater" = 0),
                         selected = "Large grey fish"),
            actionButton('submit', "Check your answers!"),
            p("Here's what you scored:"), 
            h2(textOutput("final_score"), style = "color:blue"))
      
    ),
    mainPanel()
  )
)