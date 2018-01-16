library(shiny)
library(shinydashboard)
library(ggplot2)
library(dplyr)
library(corrplot)


shinyServer(function(input, output,session) { 
  

 output$D_of_Freedom <- renderInfoBox({
    infoBox(
      "D of Freedom", paste0(25 + input$count, "1"), icon = icon("list"),
      color = "purple"
    )
    })
  
  output$P_Value <- renderInfoBox({
    infoBox(
      "P Value", ".05", icon = icon("list"),
      color = "yellow"
    )
  })
  
  output$summary <- renderPrint({
    
    
    dataset <- datasetInput()
    
    summary(dataset)
    
  
  })
    
  
  output$corrplot<- renderPlot({      
      
    
  corrplot(ibmcor2)
 
  output$attrition<- renderPlot(
      ggplot(data = IBMdata, aes(x = IBMdata$AttritionN)) +
      geom_bar(aes(fill = IBMdata$Attrition), position = "dodge")+
      ggtitle("IBM's Attrition")+ 
      labs(x = "Attrition", y = "Number of Employees ",fill = "Attrition")
    
    ) 
  
  })
    
  output$department<- renderPlot({
    ggplot(data = IBMdata, aes(x = IBMdata$Department)) +
      geom_bar(aes(fill = IBMdata$Attrition), position = "dodge")+
      ggtitle("Department")+ 
      labs(x = "Department", y = "Number of Employees",fill = "Attrition")
  
    
   })

  output$age<-renderPlot({
     
      
       ggplot(data = IBMdata, aes(x = IBMdata$Age)) +
        geom_bar(aes(fill = IBMdata$Attrition), position = "dodge")+
        ggtitle("Age")+ 
        labs(x = "Years Lived", y = "Number of Employees",fill = "Attrition")
      
  
        })
  
  
  output$yearsin<- renderPlot({  
    ggplot(data = IBMdata, aes(x = IBMdata$YearsAtCompany)) +
      geom_bar(aes(fill = IBMdata$Attrition), position = "dodge")+
      ggtitle("Years at the Company")+ 
      labs(x = "Years at the Companhy", y = "Number of Employees",fill = "Attrition")
    
    
    })

  output$numberof <- renderPlot({
    ggplot(data = IBMdata, aes(x = IBMdata$YearsWithCurrManager)) +
      geom_bar(aes(fill = IBMdata$Attrition), position = "dodge")+
      ggtitle("Years With Current Manager")+ 
      labs(x = "Years with Current Manager", y = "Number of Employees",fill = "Attrition")


    })

  output$overtime <- renderPlot({
    ggplot(data = IBMdata, aes(x = IBMdata$OvertimeN)) +
      geom_bar(aes(fill = IBMdata$Attrition), position = "dodge")+
      ggtitle("Worked Overtime")+ 
      labs(x = "Overtime", y = "Number of Employees",fill = "Attrition")
    

    })

  output$jobrole <- renderPlot({
      ggplot(data = IBMdata, aes(x = IBMdata$JobLevel)) +
        geom_bar(aes(fill = IBMdata$Attrition), position = "dodge")+
        ggtitle("Job Level")+ 
        labs(x = "Job level", y = "Number of Employees",fill = "Attrition")
    

        })

  output$monthlyincome <- renderPlot({
    ggplot(data = IBMdata, aes(x = IBMdata$MonthlyIncome))+
      geom_density(aes(color = IBMdata$Attrition))+ 
      ggtitle("Income Density Plot")+ 
      labs(x = "Monthly Imcome", y = "Number of Employees", color = "Attrition")
    

         })

  output$incomeage <- renderPlot({
    
    ggplot(IBMdata, aes(x=IBMdata$Age, y= IBMdata$MonthlyIncome)) +
      geom_point(size=3, shape= 20)+
      labs(title="Income and Age",
           x="Years Lived", y = "Monthly Income")

##put a line  
##change the color
    
       })


  output$filter <- renderPlot({
      IBMdata %>% 
      select(IBMdata$EmployeeNumber)%>%
      filter(IBMdata$Age < 36 & IBMdata$MonthlyIncome < 4919) %>%
      ggplot(aes(x = IBMdata$DistanceFromHome))
    
    
    +
      
      
      
      geom_bar(aes(fill = IBMdata$Attrition), position = "dodge")+
      ggtitle("Worked Overtime")+ 
      labs(x = "Overtime", y = "Number of Employees",fill = "Attrition")
    
   
             
    })

  })
  
 












  