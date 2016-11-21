library(shiny) 

BMI  <- function(weight,height) {(weight/(height^2))*703}

diagnosticScale<-function(weight,height){
  BMI_value<-(weight/(height^2))*703
  ifelse(BMI_value<18.5,"underweight",ifelse(BMI_value<25,"normal weight",ifelse(BMI_value<30,"overweight", "obese")))
}

shinyServer(
  function(input, output) {
    
    output$inputweightvalue <- renderPrint({input$weight})
    output$inputheightvalue <- renderPrint({input$height})
    output$estimation <- renderPrint({BMI(input$weight,input$height)})
    output$diagnosis<- renderPrint({diagnosticScale(input$weight,input$height)})
  } 
)

