


install.packages("tm")
install.packages("NLP")
install.packages("SnowballC")
install.packages("wordcloud")
install.packages("RColorBrewer")

library(tm)
library(NLP)
library(SnowballC)
library(RColorBrewer)
library(wordcloud)

file.choose(Q1)

texto <- readLines("Q1.txt")
texto = iconv(texto, to="ASCII//TRANSLIT")
texto_c<-Corpus(VectorSource(texto))

pre1<-tm_map(texto_c, tolower)
pre1<-tm_map(pre1, stripWhitespace)
pre1<-tm_map(pre1, removePunctuation)
pre1 = tm_map(pre1, removeNumbers)

stopwords("spanish")
pre1 = tm_map(pre1, removeWords,stopwords("spanish"))

letras1= TermDocumentMatrix(pre1)
findFreqTerms(letras1, lowfreq=5)
matrix=as.matrix(letras1)

vector <- sort(rowSums(matrix),decreasing=TRUE) 
dataletras <- data.frame(word= names(vector),frequencia=vector) 

wordcloud(words = dataletras$word, freq = dataletras$freq, min.freq = 1,
          max.words=50)

wordcloud(words = dataletras$word, freq = dataletras$freq, min.freq = 1,
          max.words=50, random.order=TRUE, rot.per=0.2, 
          colors=brewer.pal(8, "Dark2"))




