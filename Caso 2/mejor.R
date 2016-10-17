setwd("~/GitHub/Programacion_Actuarial_III_OT16/Caso 2")

# Lectura de datos
outcome <- read.csv("outcome-of-care-measures.csv", na.strings = "Not Available") 

mejor <- function(estado,resultado){
    
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
    
    # Regresa el nombre del hospital con la tasa más baja de mortalidad de 30 días 
    
    
    ext <- subset(newout, newout$State==estado)
    minmor <- min(ext[,3], na.rm = TRUE)
    
    ext2 <- subset(ext,ext[,3]==minmor)
    hospital <- ext2$Hospital.Name
    hospital
    
    
}


#Pruebas

mejor("TX", "ataque")
mejor("TX", "falla")
mejor("MD", "ataque") 
mejor("MD", "neumonia")
mejor("BB", "ataque") 
mejor("NY", "atakue") 
