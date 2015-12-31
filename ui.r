shinyUI(fluidPage(
titlePanel(h1("Results random drawing")),

  sidebarLayout(position="right",
          sidebarPanel( img(src="Gamma.png", height = 100, width = 100)),
  mainPanel(h3("main panel", align="center"),
            h5("subtitel"), align="left")),
 
   fluidRow(
      column(3,
           h3("Buttons"),
           actionButton("action", label = "Action")),
#            ),

 # fluidRow(
      column(3,
             fileInput("file", label = h3("File input"))),
             
      column(3,
             sliderInput("slider1", label = h6("Swipe to change the number of simulations"),
                         min = 0, max = 10000, value = 100),
             sliderInput("slider2", label = h6("Change the number of bins"),
                         min = 0, max = 100, value = 10)            
             ), 
#           ),
#column breedte maximaal 12
#  fluidRow(
      column(3, 
            selectInput("select", 
            label = h5("Select distribution"), 
            choices = list("Normal" = "Normal", "Student t" = "Student-t","Gamma" = "Gamma"), selected = 1),
            textOutput("text1")),    

      column(3, 
            numericInput("df", 
            label = h5("Degrees of freedom"), 
            value = 4))     
            ),
  
fluidRow(
      column(12,
  plotOutput("numbersims"))
          )
))
