setwd("~/Progra 3 programas/GitHub/Programacion_Actuarial_III_OT16/Caso 1/specdata")

directorio="~/Progra 3 programas/GitHub/Programacion_Actuarial_III_OT16/Caso 1/specdata" 

mediacontaminante <- function(directorio , contaminante= "nitrate", id= 1:332){

sum2 <-0
ndc2<-0
  media <- 0
  
  if (contaminante== "sulfate") { 
    col= 2
  } else if(contaminante == "nitrate"){
    col=3
  } else {
    
  }
  
  for(i in id) {
  
    if (i<10) {
      data <- read.csv(paste("00", i ,".csv", sep=""))
    }else if(i>=10 && i<100 ) {
      data<-read.csv(paste("0", i, ".csv", sep=""))
    }else {
      data<-read.csv(paste(i, ".csv",sep=""))
    }
    

    colmed<-data[col]  
    ccomple<- complete.cases(colmed) 
    datacomple <- data[ccomple, ]
    
    
    ndc <- nrow(datacomple) 
    ndc2 <- ndc2+ndc
    sum <- sum(datacomple[,col]) 
   sum2<- sum2+sum
  }
  media <- sum2/ndc2
  print(media)
}
mediacontaminante(directorio,"nitrate",1:10)
