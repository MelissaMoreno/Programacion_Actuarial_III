setwd("~/GitHub/Programacion_Actuarial_III_OT16/Caso 2")

# Lectura de datos

outcome <- read.csv("outcome-of-care-measures.csv", na.strings = "Not Available") 
rankhospital <- function(estado,resultado,num="mejor"){
    
# Revisión de la validez de estado y resultado 
    
    if (!((resultado == "ataque") | (resultado == "falla")
          | (resultado == "neumonia"))) {
        stop ("resultado inválido")
        break
    }
    newout<- if (resultado == "ataque") {
        outcome[c(2,7,11)] 
    } else if (resultado == "falla") {
        outcome[c(2,7,17)] 
    } else {
        outcome[c(2,7,23)] 
    }      
    
    estad <- as.character(outcome$State)
    if(!(estado %in% estad)){
        stop("estado inválido")
        break
    }
    
    #Regresa el nombre del hospital con el puesto dado de la tasa más  
    #baja de mortalidad de 30 días 
    ext <- subset(newout, newout$State==estado)
    
    lista<-ext[order(as.numeric(ext[[3]]),ext[[1]]),]
    
    if (num=="peor"){
        ext <- subset(newout, newout$State==estado)
        peor <- max(ext[,3], na.rm = TRUE)
        ext2 <- subset(ext,ext[,3]==peor)
        hospital <- ext2$Hospital.Name
        hospital
    }else if(num=="mejor"){
        ext <- subset(newout, newout$State==estado)
        mej <- min(ext[,3], na.rm = TRUE)
        ext2 <- subset(ext,ext[,3]==mej)
        hospital <- ext2$Hospital.Name
        hospital
    }else if(num > nrow(ext)){
        stop(return(NA))
    }else {
        hospital<-lista[num,1]
        hospital  
    }
    
    
}


rankhospital("TX", "falla", 4)
rankhospital("MD", "ataque", "peor") 
rankhospital("MN", "ataque", 5000)
