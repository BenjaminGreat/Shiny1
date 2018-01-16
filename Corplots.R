library(googleVis)


Dashed <-  gvisLineChart(df, xvar="country", yvar=c("val1","val2"),
                         options=list(
                           series="[{color:'green', targetAxisIndex: 0, 
                           lineWidth: 1, lineDashStyle: [2, 2, 20, 2, 20, 2]}, 
                           {color: 'blue',targetAxisIndex: 1, 
                           lineWidth: 2, lineDashStyle: [4, 1]}]",
                           vAxes="[{title:'val1'}, {title:'val2'}]"
                         ))





Bubble <- gvisBubbleChart(IBMdata, idvar="Employees", 
                          xvar="IBMdata$", yvar="MonthlyIncome",
                          colorvar="Attrition", sizevar="Numberof Employees",
                          options=list(
                            hAxis='{minValue:75, maxValue:125}'))


library(plotly)


packageVersion('plotly')



p <- plot_ly(IBMdata, x = ~IBMdata$Age, y = ~IBMdata$MonthlyIncome)


p <-plot_ly(IBMdata, x =  )





p <- plot_ly(
  x = c(IBMdata$MonthlyIncome, IBMdata$Attrition),
  name = "SF Zoo",
  type = "bar"
)

p


library(ggplot2)


ggplot(data = IBMdata, aes(x = IBMdata$MonthlyIncome)) +
  geom_bar(aes(fill = IBMdata$Attrition), position = "dodge",)




p <- plot_ly(IBMdata, x = ~IBMdata$MonthlyIncome, type = 'scatter', mode = 'lines')


p

x <- c(1:15)
y <- c(10, 20, NA, 15, 10, 5, 15, NA, 20, 10, 10, 15, 25, 20, 10)

data <- data.frame(x, y)

p <- plot_ly(IBMdata, x = ~IBMdata$Age, y = "unique", name = "Gaps", type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~"unique"- 5, name = "<b>No</b> Gaps", connectgaps = TRUE)

p

library(dplyr)
library(plotly)


ggplot(data=IBMdata, aes(x=IBMdata$Age, y=IBMdata$MonthlyIncome, group=IBMdata$AttritionN, colour="red", colour = "green")) +
  geom_line() +
  geom_point()

ggplot(data=IBMdata, aes(x=IBMdata$Age, y=IBMdata$MonthlyIncome, group=IBMdata$Attrition, shape=IBMdata$Attrition, color=IBMdata$Attrition)) +
  geom_line(aes(size =FALSE)) +
  geom_point()


ggplot(data=IBMdata, aes(x=IBMdata$MonthlyIncome, y=IBMdata$MonthlyIncome, group=IBMdata$Attrition, shape=IBMdata$Attrition, color=IBMdata$Attrition)) +
  geom_line(aes(size =FALSE)) +
  geom_point()



ggplot(IBMdata, aes(x=IBMdata$MonthlyIncome, y = IBMdata$EmployeeNumber)) + geom_point()







corrplot( cor(as.matrix(IBMdata2, method = "pearson", use = "complete.obs") ,is.corr = FALSE, type = "lower", order = "hclust", tl.col = "black", tl.srt = 360))

corrplot( cor(as.matrix(IBMdata3, method = "pearson", use = "complete.obs") ,is.corr = FALSE, type = "lower", order = "hclust", tl.col = "black", tl.srt = 360))









numericvar2 <-  IBMdata2[,sapply(IBMdata3, is.numeric )] %>% colnames()

ibmcor3<- cor(IBMdata2[,numericvar2])

corrplot::corrplot(ibmcor2)

View(IBMdata2)




library(dplyr)
library(corrplot)






ibmcor2<- cor(IBMdata2)

corrplot(ibmcor2, method = "circle")






  
  
mean(IBMdata2$Age)

median(IBMdata2$Age)



library(dplyr)


ggplot(IBMdata2, aes(x = IBMdata2$Age)) +
  geom_histogram()



ggplot(IBMdata2, aes(x = IBMdata2$MonthlyIncome)) + 
      geom_histogram()



mean(IBMdata2$MonthlyIncome)
median(IBMdata2$MonthlyIncome)




group_by(IBMdata2$Age)







summarise(IBMdata2$MonthlyIncome)

class(IBMdata2$MonthlyIncome)


filter(IBMdata2,  AttritionN == "2")

df %>% arrange(., desc(value))

df %>% mutate(., double = value*2)









lessincome = IBMdata2[IBMdata2$MonthlyIncome == 0 > 5000 ]




lessincome = cbind(IBMdata2$X, IBMdata2$AttritionN, IBMdata2$MonthlyIncome, IBMdata2$Age)


View(IBMdata2)


View(lessincome)


colnames(lessincome) <- c("Employees", "Attrition", "MonthlyIncome","Age")



View(lessincome)



lessincome= as.data.frame(lessincome)


View(lessincome)



income = data.frame(lessincome)







View(lessincome)


bar <- subset(foo, location == "there")

Rich <- subset(lessincome, MonthlyIncome >= 5000 )
Poor <- subset(lessincome, MonthlyIncome <= 5000 )

summary(Rich)
summary(Poor)


Old <- subset(lessincome, Age >= 36)

Young<- subset(lessincome, Age <= 36)

summary(Old)
summary(Young)






YoungPoor<- subset(Poor, Age <= 36)

OldPoor<- subset(Poor, Age >=  36)


YoungRich<- subset(Rich, Age <= 36)

OldRich<- subset(Rich, Age >= 36)









library(ggplot2)






ggplot(YoungPoor)



YoungPoor

OldPoor




ggplot(data=df2, aes(x=dose, y=len, group=supp)) +
  geom_line(linetype="dashed", color="blue", size=1.2)+
  geom_point(color="red", size=3)


ggplot(YoungRich, aes(x = YoungRich$MonthlyIncome)) +
  geom_histogram()


ggplot(YoungRich, aes(x = YoungRich$MonthlyIncome)) +
  geom_histogram()


ggplot(OldRich, aes(x = OldRich$MonthlyIncome)) +
  geom_histogram()

ggplot(YoungRich, aes(x = YoungRich$Age)) +
  geom_histogram()


ggplot(OldRich, aes(x = OldRich$Age)) +
  geom_histogram()




median(YoungRich$Age)
median(Young$Age)


View(OldPoor)


summary(YoungRich)

summary(OldRich)

summary(YoungPoor)
summary(OldPoor)


median(YoungRich$MonthlyIncome)





filter(YoungRich, Attrition == 1)
filter(OldRich, Attrition == 1)






count(YoungRich, Attrition, 1 == YoungRich$Attrition)
count(OldRich, Attrition, 1 == OldRich$Attrition)

count(OldPoor, Attrition, 1 == OldPoor$Attrition)
count(YoungPoor, Attrition, 1 == YoungPoor$Attrition)


count(Old, Attrition, 1 == Old$Attrition)
count(Young, Attrition, 1 == Young$Attrition)


count(Rich, Attrition, 1 == Rich$Attrition)
count(Poor, Attrition, 1 == Poor$Attrition)


count(IBMdata2, AttritionN, 1 == IBMdata2$AttritionN )



YouthTest = sample_n(Old, 740, replace = TRUE)


YouthTest2 = sample_n(Young, 740, replace = TRUE)


View(YouthTest)



Youthtbl = table(YouthTest$Attrition, YouthTest2$Attrition)



View(Youthtbl)



wilcox.test(x, y = NULL,
            alternative = c("two.sided", "less", "greater"),
            mu = 0, paired = FALSE, exact = NULL, correct = TRUE,
            conf.int = FALSE, conf.level = 0.95, ...)



wilcox.test(YouthTest$Attrition, YouthTest2$Attrition, paired=TRUE) 

()





WeathTest = sample_n(Poor, 720, replace = TRUE)


WeathTest2 = sample_n(Rich, 720, replace = TRUE)



tab3 = table(WeathTest$Attrition, WeathTest2$Attrition)

phi(tab3)




YouthTest = sample_n(Old, 740, replace = TRUE)

YouthTest2 = sample_n(Young, 740, replace = TRUE)

tab2 = table(YouthTest$Attrition, YouthTest2$Attrition)

phi(tbl2)


YoungPoor

YoungRich


YoungWealth = sample_n(YoungPoor, 250, replace = TRUE)

YoungWealth2 = sample_n(YoungRich, 250, replace = TRUE)



OldWealth = sample_n(OldPoor, 250, replace = TRUE)

OldWealth2 = sample_n(OldRich, 250, replace = TRUE)



tab4 = table(YoungWealth$Attrition, YoungWealth2$Attrition) 
             
tab5 = table(OldWealth$Attrition, OldWealth2$Attrition)


tab6 = table(YoungWealth2$Attrition, OldWealth$Attrition)


tab7 = table(YoungWealth$Attrition, OldWealth2$Attrition)


tab8 = table(YoungWealth$Attrition, YoungWealth$Attrition2)


chisq.test(tab8)





library(MASS)


phi(tab4)
phi(tab5)
phi(tab6)
phi(tab7)




OldPoor

OldRich



median(IBMdata2$MonthlyIncome)
mean(IBMdata2$MonthlyIncome)














phi()





tab <- table(sample(1:2, 30, TRUE), sample(1:2, 30, TRUE))


library(psych)

phicoef(tab)

?psych


phi(tab)
View(tab)




library(MASS) 



tbl = table(IBMdata$Attrition, IBMdata2$X) 
View(tbl)


.




tbl3 = table





View(tbl2)

phi(tbl2)







View(iris)


dplyr::count(iris, Species, wt = Sepal.Length)


filter(iris, Sepal.Length == 5)











library(dplyr)




summary(lessincome)


View(bar)

View(income)



subset()







library(dplyr)

class(lessincome)

View(lessincome)









df$x <- paste(df$n,df$s)






























IBMdata2$AttritionN

























ggplot(data = IBMdata, aes(x = IBMdata$OvertimeN)) +
  geom_bar(aes(fill = IBMdata$Attrition), position = "dodge", )+
  ggtitle("Worked Overtime")+ 
  labs(x = "Overtime", y = "Number of Employees",fill = "Attrition")










library(corrplot)


########
## Good introduction graphs

corrplot

Mapped Attrition 



ggplot(data = IBMdata, aes(x = IBMdata$AttritionN)) +
  geom_bar(aes(fill = IBMdata$Attrition), position = "dodge", )+
  ggtitle("IBM's Attrition")+ 
  labs(x = "Attrition", y = "Number of Employees ",fill = "Attrition")






output$corrplot<- renderPlot(
  ggplot(data = IBMdata, aes(x = IBMdata$AttritionN)) +
    geom_bar(aes(fill = IBMdata$Attrition), position = "dodge", )+
    ggtitle("IBM's Attrition")+ 
    labs(x = "Attrition", y = "Number of Employees ",fill = "Attrition"))




fluidRow(
  box( width = 12, plotOutput("corrplot")
       
      
      
  ggplot(data = IBMdata, aes(x = IBMdata$Age)) +
         geom_histogram( )+
         ggtitle("Age Distribution")+ 
         labs(x = "Age", y = "Number of Employees ")
       


  
  
  
  output$age<-renderPlot({
    ggplot(data = IBMdata, aes(x = IBMdata$Age)) +
      geom_bar(aes(fill = IBMdata$Attrition), position = "dodge")+
      ggtitle("Age")+ 
      labs(x = "Years Lived", y = "Number of Employees",fill = "Attrition")
  )
  
  output$`age distribution`<-renderPlot(
    ggplot(data = IBMdata, aes(x = IBMdata$Age)) +
      geom_histogram( )+
      ggtitle("Age Distribution")+ 
      labs(x = "Age", y = "Number of Employees ")
    
  )
  })
  
  
  output$corrplot<- renderPlot({      
    corrplot(ibmcor2)
    
    output$attrition<- renderPlot(
      ggplot(data = IBMdata, aes(x = IBMdata$AttritionN)) +
        geom_bar(aes(fill = IBMdata$Attrition), position = "dodge")+
        ggtitle("IBM's Attrition")+ 
        labs(x = "Attrition", y = "Number of Employees ",fill = "Attrition")
  
  
  
  
  
  
  
  
  
  
  
  
  







