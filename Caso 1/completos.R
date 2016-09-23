setwd("~/Progra 3 programas/GitHub/Programacion_Actuarial_III_OT16/Caso 1/specdata")
directorio="~/Progra 3 programas/GitHub/Programacion_Actuarial_III_OT16/Caso 1/specdata"

completos <- function(directorio, id=1:332){
 
 valores <- vector("numeric")
  
  for(i in id) {
    
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
    valores <- c(valores,ndc) 
    
    
  }

  df <- data.frame(id, nobs=valores)
  df 
}
completos(directorio,3)
