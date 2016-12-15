---
title: "CodeBook"
output: pdf_document
---
# Programación Actuarial 3
## Caso 3
###Code Book

####Introducción
Aquí vamos a describir las variables, base de datos y transformaciones que se
hicieron.

####Variables
Las variables elegidas en la base de datos provienen del acelerómetro y
giroscopio de los celulares en 3 ejes, las señales se usaron para generar
variables para los vectores X,Y y Z

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

Y las señales derivadas de estas variables fueron:

+ mean(): Media
+ std(): Desviación estandar
+ mad(): Desviación media absoluta 
+ max(): Valor más grande de los datos
+ min(): Valor más pequño de los datos
+ sma(): Signal magnitude area
+ energy(): Medición de energía 
+ iqr(): Rango intercuartil
+ entropy(): Señal de entropia
+ arCoeff(): Coeficiente de autorregresion con orden igual a 4
+ correlation(): Coeficiente de correlación entrre dos señales
+ maxInds(): Índice de coeficiente de frecuencia con la magnitud más grande
+ meanFreq(): Coeficientes de frecuencia para obtener la frecuencia media
+ skewness(): Oblicuidad de la señal de la frecuencia 
+ kurtosis(): Curtosis de la señal de la frecuencia 
+ bandsEnergy(): Energia de un intervalo de frecuencia bajo la función FFT
+ angle(): Angulo entre dos vectores

La lista de varibales completa se encuentra en: "features.txt"

####Base de Datos
El experimento se realizó con un grupo de 30 persona entre los 19 y 48 años.
Cada persona hizo 6 actividades usando un Samsung Galaxy o la cadera. Usando el
acelerómetro y giroscopio del celular se obtuvieron datos de distintas variables
y luego se separaron en dos.

Para la base de datos y más información:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


####Transformaciones
1. Unir los datos de test con los de training, para crear un solo conjunto de
datos
2. Extrae únicamente las medidas de media y desviación estándar de cada medición
3.Usa nombres de actividad para describir los nombres de las actividades en la
base de datos
4. Coloca etiquetas apropiadas en la base de datos con nombres de variables que
las describan.
5. Con los datos del paso 4, crea una segunda base de datos independiente con
el promedio de cada variable para cada actividad y cada sujeto.









