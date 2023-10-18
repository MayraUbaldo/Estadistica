
# Muestreo aleatorio simple
#Generar número aleatorios para una muestra de 61 personas en una 
#población de 73 alumnas/os del 5to semestre de la LEP BENV.
#Confiabilidad del 95% y 5% de error.
#x=del 1 al 73, que corresponde a la población.
#side=61, que corresponde al tamaño de la muestra.

#Con el siguiente link se calculó la muestra:
#  <http:www.macorr.com/sample-size-calculator.htm>

#Ejemplo 1
sample(1:73, 61, replace=FALSE)

#Ejemplo 2
sample(1:73, 61, replace=FALSE)

#Ejemplo 3 cambiando FALSE por TRUE
sample(1:73, 61, replace=TRUE)

###EJERCICIOS

#1.1-Calcula el tamaño de muestra para una población de 83 alumnas
#y alumnos que se encuentran en primer grado de la Licenciatura en 
#Educación Primaria de la BENV.

#Muestra= 68


#1.2.- Una vez que obtengas el tamaño de la muestra, selecciona
#el número de lista de las personas que formaran parte de la muestra. 
sample(1:83, 68, replace=FALSE)

#1.3.- Crea un vector llamado muestra con los números de lista de
#las personas que forman parte de la muestra.

#Forma larga: copiar y pegar, después poner las comas a cada número.
muestra<-c(24,15,70,81,65,83,27,54,56,12,46,43,35,18,25,67,10,3,63,60,
           ,37,45,51,32,17,68,34,82,20,13,6,16,8,76,2,11,62,23,28,74,
           39,41,72,61,50,33,14,40,57,64,49,19,53,44,4,77,69,22,48,29,
           73,5,52,1,78,59,66)

#Forma corta: copiar y pegar la función y mostrar
muestra2<-sample(1:83, 68, replace=FALSE)
muestra2

# Muestreo estratificado

#Matrícula de la escuela: 328

#Primero: 47

#Segundo: 58

#Tercero: 51

#Cuarto: 51

#Quinto: 61

#Sexto: 60


#Muestras:
  #Con confiabilidad del 95% y error de 5%
  
  #Alumnos de primer grado: 47

#Muestra de primero: 42


Primero<-sample(1:47, 42, replace=FALSE)
Primero

#Alumnos de segundo grado: 58

#Muestra de segundo: 51


Segundo<-sample(1:58, 51, replace=FALSE)
Segundo

#Alumnos de tercer grado: 51

#Muestra de tercero: 45


Tercero<-sample(1:51, 45, replace=FALSE)
Tercero


#Alumnos de cuarto grado: 51

#Muestra de cuarto: 45


Cuarto<-sample(1:51, 45, replace=FALSE)
Cuarto


#Alumnos de quinto grado: 61

#Muestra de quinto: 53


Quinto<-sample(1:61, 53, replace=FALSE)
Quinto


#Alumnos de sexto grado: 60

#Muestra de sexto: 52


Sexto<-sample(1:60, 52, replace=FALSE)
Sexto


