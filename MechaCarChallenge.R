library(dplyr)

#Deliverable 1

MechaCar_mpg <- read.csv('MechaCar_mpg.csv') #import dataset

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg))

#Deliverable 2

Suspension_Coil <- read.csv('Suspension_Coil.csv') #import dataset

total_summary <- Suspension_Coil %>% summarize('Mean'=mean(PSI), 'Median'=median(PSI), 'Variance'=var(PSI), 'SD'=sd(PSI))

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize('Mean'=mean(PSI), 'Median'=median(PSI), 'Variance'=var(PSI), 'SD'=sd(PSI))
