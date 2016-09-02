#Lectura de datos
getwd()
setwd("~/GitHub/Programacion_Actuarial_III")
data <- read.csv("Datos_S&P.csv")
data <- read.table("Datos_S&P.csv",T,",")
data
#mode(data)
x <- data
#class(data)

class(data.frame)
mode(x)

p<- as.list(read.table("Datos_S&P.csv", header = T, nrows = 20))
mode(p)

#A <- as.matrix(read.table("matrix.dat", header = FALSE, nrows = 200, comment.char = "", colClasses = "numeric"))