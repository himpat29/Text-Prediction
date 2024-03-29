### ui 
suppressWarnings(library(shiny))
suppressWarnings(library(markdown))


shinyUI(navbarPage("Coursera Data Science Capstone: Course Project",
                   tabPanel("Predict the Next Word",
                            HTML("Author: Himanshu Shekhar Pathak"),
                            br(),
                            #HTML("<strong>Dedicated to My love, my life , my Cutoo Neha </strong>"),
                            br(),
                            #img(src = "./photo.jpg"),
                            # Sidebar
                              sidebarLayout(
                              sidebarPanel(
                                helpText("Enter a partially complete sentence to begin the next word prediction"),
                                textInput("inputString", "Enter a partial sentence here",value = ""),
                                br(),
                                br(),
                                br(),
                                br()
                                ),
                              mainPanel(
                                  h2("Predicted Next Words"),
                                  verbatimTextOutput("prediction"),
                                  verbatimTextOutput("prediction2"),
                                  strong("Sentence Input:"),
                                  tags$style(type='text/css', '#text1 {background-color: rgba(255,255,0,0.40); color: blue;}'), 
                                  textOutput('text1'),
                                  br(),
                                  strong("Note:"),
                                  tags$style(type='text/css', '#text2 {background-color: rgba(255,255,0,0.40); color: black;}'),
                                  textOutput('text2'),
                                  br()
                                  
                              )
                              )
                             
                  ),
                   tabPanel("About",
                            mainPanel(
                              #img(src = "./headers.png"),
                              includeMarkdown("about.md")
                            )
                   )
)
)

