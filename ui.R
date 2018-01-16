library(shiny)
library(shinydashboard)
library(ggplot2)
library(corrplot)

dashboardPage(
   

  
  dashboardHeader(title = "Exploring IBM's Employee Attrition", titleWidth = 450),
  
  
  
  dashboardSidebar(
    
    sidebarUserPanel(h2("Benjamin"),
    image = " http://www.underconsideration.com/brandnew/archives/ibm_watson_logo.jpg"),
    br(),
   
    
    
      sidebarMenu(
      menuItem("Source code", icon = icon("file-code-o"), 
               href = "https://www.kaggle.com/pavansubhasht/ibm-hr-analytics-attrition-dataset")), 
  
  
   
     #sidebarMenu(
      #menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
      #menuItem("Widgets", icon = icon("th"), tabName = "widgets",
               #badgeLabel = "superwidgets", badgeColor = "red")),
    
    
    #selectInput(inputId = "IBMdata", 
                #label = "Choose a dataset:",
                #choices = colnames(IBMdata)),  
    
   
    
     sidebarMenu(
      menuItem("Correlations", tabName = "corrplot"),
      menuItem("Overtime", tabName = "overtime"),
      menuItem("Age",tabName = "age"),
      menuItem("Years Current Role", tabName = "yearsin"),
      menuItem("NumberofCompanies", tabName = "numberof"),
      menuItem("JobLevel", tabName = "joblevel"),
      menuItem("MonthlyIncome", tabName = "monthlyincome"),
      menuItem("IncomeAge", tabName = "incomeage"),
      menuItem("Filter", tabName = "filter")
    )
   ),
   
    dashboardBody(
          
       tabItems(
        tabItem(
          tabName = "corrplot",
          fluidRow(
            box( width = 12, plotOutput("attrition")),
                 
            box( width = 12, plotOutput("corrplot")
                
            ) 
          )
        ),
        tabItem(
          tabName = "department",
          fluidRow( 
            box( width = 12, plotOutput("department")
            ) 
          )
        ),
        
        tabItem(
          tabName = "age",
          fluidRow( 
            box( width = 12,  plotOutput("age")
            
            )
          )
        ),
       tabItem(
         tabName = "yearsin",
         fluidRow( 
           box( width = 12, plotOutput("yearsin")
           )
         )
       ),
       tabItem(
         tabName = "numberof",
         fluidRow( 
           box( width = 12, plotOutput("numberof")
           )
         )
       ),
        tabItem(
         tabName = "overtime",
         fluidRow( 
           box( width = 12,  plotOutput("overtime")
           )
         )
       ),
       tabItem(
         tabName = "joblevel",
         fluidRow( 
           box( width = 12,  plotOutput("jobrole")
           )
          )
         ),
       tabItem(
         tabName = "monthlyincome",
         fluidRow( 
           box( width = 12,  plotOutput("monthlyincome")
           )
         )
       ), 
        tabItem(
          tabName = "incomeage",
          fluidRow( 
            box( width = 12,  plotOutput("incomeage")
            )
          )    
        ),      
       tabItem(
         tabName = "filter",
         fluidRow( 
           box( width = 12,  plotOutput("filter")
            )
          )
        )     
      )       
     )
    )
    
   
   