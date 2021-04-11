library(tidyverse)
library(dplyr)


#Deliverable #1 


mechacar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) # Importing csv file for deliverable 1

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_table) # Running Multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_table) ) #Generating statistics for regression



# Deliverable #2 

suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) # Importing csv for Deliverable #2 

total_summary <- suspension_table %>% summarize(Mean = mean(PSI),Median = median(PSI),Variance =var(PSI), SD = sd(PSI)) # Summarizing data 

lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),Median = median(PSI),Variance =var(PSI), SD = sd(PSI)) # Summarizing data by lot




# Deliverable #3 


t.test(suspension_table$PSI, mu = 1500) # t-test across all lots


t.test(subset(suspension_table, Manufacturing_Lot == 'Lot1')$PSI, mu = 1500) # t-test on lot 1

t.test(subset(suspension_table, Manufacturing_Lot == 'Lot2')$PSI, mu = 1500) # t-test on lot 2

t.test(subset(suspension_table, Manufacturing_Lot == 'Lot3')$PSI, mu = 1500) # t-test on lot 3

