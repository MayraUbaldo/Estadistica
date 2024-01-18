

##Nube de palabras 

# Instalamos todos los paquetes que necesitamos
install.packages("tm")
install.packages("NLP")
install.packages("SnowballC")
install.packages("wordcloud")
install.packages("RColorBrewer")

# Abrimos librerias correspondientes
library(tm)
library(NLP)
library(SnowballC)
library(RColorBrewer)
library(wordcloud)

# Leer el documento

file.choose(Q8)

#Leer el documento
texto <- readLines("Q8.txt")
texto = iconv(texto, to="ASCII//TRANSLIT")
texto_c<-Corpus(VectorSource(texto))

# Poner todos los datos a minuscula 
pre8<-tm_map(texto_c, tolower)


# Quitar espacios en blanco
pre8<-tm_map(pre8, stripWhitespace)


# Quitar la puntuacion 
pre8<-tm_map(pre8, removePunctuation)


# Quitar los numeros 
pre8 = tm_map(pre8, removeNumbers)


# Mostramos palabras vacias
stopwords("spanish")


# Quitar palabras genericas 
pre8 = tm_map(pre8, removeWords,stopwords("spanish"))


# ----------------------------------------------
##DATA FRAME DE PALABRAS CON SU FRECUENCIA 
# ----------------------------------------------

# Creamos la matriz de letra  
letras8= TermDocumentMatrix(pre8)
findFreqTerms(letras8, lowfreq=5)
matrix=as.matrix(letras8)


# Lo ordenamos y sumamos letras de nuestra matriz 
vector <- sort(rowSums(matrix),decreasing=TRUE) 
dataletras <- data.frame(word= names(vector),frequencia=vector) 


# -----------------------------------------
## GRAFICAMOS LA FRECUENCIA DE PALABRAS 
# -----------------------------------------

barplot(dataletras[1:10,]$freq, las = 2, names.arg = dataletras[1:10,]$word,
        col ="blue", main ="PALABRAS MAS FRECUENTES", 
        ylab = "Frecuencia de palabras")


# ----------------------------------------
## GRAFICAMOS LA NUBE DE PALABRAS 
# ----------------------------------------

wordcloud(words = dataletras$word, freq = dataletras$freq, min.freq = 1,
          max.words=50)


# En el centro la palabra mas importante 

wordcloud(words = dataletras$word, freq = dataletras$freq, min.freq = 1,
          max.words=50, random.order=TRUE, rot.per=0.2, 
          colors=brewer.pal(8, "Dark2"))






