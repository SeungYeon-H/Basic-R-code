#gsub =>  EXCEL 's ctrl+f and convert the contents into other components

 head(iris)
#  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa

read<-subset(iris,select=c(2,4,5))
names(read)<-c("a","b","c")
read$c<-gsub('setosa','STs',read$c)
#multiple conversion is like : read$c<-gsub('jinwuicheon|Osancheon|Ansungcheon|Balancheon', 'Han river tributary in Gyeong-gi province', read$c)
head(iris)

head(read)
#    a   b   c
1  3.5   0.2 STs
2  3.0   0.2 STs
3  3.2   0.2 STs
4  3.1   0.2 STs
5  3.6   0.2 STs
6  3.9   0.4 STs
