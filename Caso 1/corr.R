setwd("~/Progra 3 programas/GitHub/Programacion_Actuarial_III_OT16/Caso 1/specdata")
directorio="~/Progra 3 programas/GitHub/Programacion_Actuarial_III_OT16/Caso 1/specdata"

corr <- function(directorio, horizonte=0){
 
 resultado <- vector("numeric")
  correl <- vector("numeric")
  
  for(i in 1:332) {
    
    if (i<10) {
      data <- read.csv(paste("00", i ,".csv", sep=""))
    }else if(i>=10 && i<100 ) {
      data<-read.csv(paste("0", i, ".csv", sep=""))
    }else {
      data<-read.csv(paste(i, ".csv",sep=""))
    }
    
    
    cascom <- complete.cases(data)
    dc <- data[cascom, ]
    ndc <- nrow(dc)   
    if (ndc>=horizonte) {
      correl <-  cor(dc[3],dc[2]) 
      resultado <- c(resultado,correl)
    }
    
  }
  
  print(resultado)
}
summary(corr(,400))
#summary(corr)
