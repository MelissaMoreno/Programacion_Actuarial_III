setwd("~/GitHub/Programacion_Actuarial_III_OT16/Caso 2")

# Lectura de datos 

outcome <- read.csv("outcome-of-care-measures.csv",colClasses = "character") 
rankingcompleto <- function(resultado, num="mejor"){

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
    
    # Para cada estado, encuentra el hospital con la posición dada. 
    eds <- sort(unique(outcome$State))
    pdf <- vector("character")
    edos <- vector("character")
    
    sts <- levels(eds)
               
     
    for (estado in eds){
        ext <- subset(newout, newout$State==estado  & !newout[[3]]=="Not Available")
        
        lista<-ext[order(as.numeric(ext[[3]]),ext[[1]]),]
        
        if (num=="peor"){
            
            peor<-lista[which.max(lista[[3]]),]
            hospital <- peor$Hospital.Name
            pdf <- c(pdf,hospital)
        }else if(num=="mejor"){
            
            mej<-lista[which.min(lista[[3]]),]
            hospital <- mej$Hospital.Name
            pdf <- c(pdf,hospital)
            
        }else {
            hospital<-lista[num,1]
            pdf <- c(pdf,hospital)  
        }
        edos <- c(edos, eds)
    }
    
    # Regresa un data frame con el nombre del hospital y la abreviatura 
    # del nombre del estado al que pertenece. 
    
   df <- data.frame(pdf,edos)
               colnames(df) <- c("hospital", "state")
                   rownames(df)<- sts
                       df
    }


#Pruebas
head(rankingcompleto("ataquísimo", 20), 10)
head(rankingcompleto("ataque", 20), 10)
tail(rankingcompleto("neumonia", "peor"), 3)
tail(rankingcompleto("falla"), 10)

