library(shiny) 

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Body Mass Index (BMI) Calculator"),
    
    sidebarPanel(
      numericInput('weight', 'Insert your weight in pounds', 150, min = 50, max = 400, step = 1) ,
      numericInput('height', 'Insert your height in inches', 60, min = 20, max = 96, step = 1),
      submitButton('Submit')
    ), 
    mainPanel(
      p('The Body mass index (BMI) is a measure of body fat based on the height and the weight of adult men and women.
        '),
      p('The BMI is designed to assess an individuals body weight depending on his/her height. '),
      p('The formula for calculating BMI is: BMI = (Weight in Pounds / (Height in inches x Height in inches)) x 703'),
      p('The classification for BMI values is the following:'),
      tags$div(
        tags$ul(
          tags$li('BMI <18.5       : Underweight'),
          tags$li('BMI (18.5-24.9) : Normal weight'),
          tags$li('BMI (25-29.9)   : Overweight'),
          tags$li('BMI >=30        : Obesity')
        )
      ),
      
      p('The values you entered:'), 
      p('Weight:'), verbatimTextOutput("inputweightvalue"),
      p('Height:'), verbatimTextOutput("inputheightvalue"),
      p('Your BMI is :'),
      verbatimTextOutput("estimation"),
      p('You are:'),(verbatimTextOutput("diagnosis"))
      
      
      )
    
  )   
)