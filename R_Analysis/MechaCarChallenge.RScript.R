library(tidyverse)
library(dplyr)
MPG <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=MPG)
summary(lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=MPG))

#Deliverable 2
table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
lot_summary <- table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

#Deliverable 3
plt <- ggplot(table,aes(PSI)) #import dataset into ggplot2
plt + geom_density() #visualize distribution using density plot
t.test(table$PSI,mu=1500)

lot1 <- subset(table, Manufacturing_Lot=="Lot1")
lot2 <- subset(table, Manufacturing_Lot=="Lot2")
lot3 <- subset(table, Manufacturing_Lot=="Lot3")


t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)

