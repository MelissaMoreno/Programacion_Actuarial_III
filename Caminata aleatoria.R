contarriba <- 0
contabajo <- 0

for  (repeticiones in 1:100) {
  z <- 5
  while (z>=3 && z<=10){ 
    print(z)
    moneda<- rbinom(1,1,0.5) 
    if (moneda==1){ #Caminata Aleatoria
      z <- z+0.5
    } else {
      z <- z-0.5
    } 
  } 
  if (z>10){
    contarriba<- contarriba +1
  } else {
    contabajo <- contabajo +1
  } }

contabajo
contarriba