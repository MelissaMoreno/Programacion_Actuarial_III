#Tasa de mortalidad de 30 días por ataque al corazón


setwd("~/GitHub/Programacion_Actuarial_III_OT16/Caso 2")
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character") 
head(outcome) 
ncol(outcome)
names(outcome)


outcome[, 11] <- as.numeric(outcome[, 11])  
## You may get a warning about NAs being introduced; that is okay 
hist(outcome[, 11]) 
