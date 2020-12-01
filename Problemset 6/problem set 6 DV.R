#first question
simon.says <- function(word){
  answer <- toupper(word)
  return(answer)
}
result<-simon.says("hello World")
cat("Simon says:",result)
#second question:
matrix.multiplication <- function(fm,sm){
  if (nrow(fm) == ncol(sm)){ 
    return(TRUE)
  }
  else{
    return(FALSE)
  }
}
mat1<-matrix(c(1:3),nrow = 3,ncol = 3)
mat2<-matrix(c(1:5),nrow = 5,ncol = 5)
matrix.multiplication(mat1,mat2)
mat3<-matrix(c(1:5),nrow = 5,ncol = 3)
mat4<-matrix(c(1:5),nrow = 3,ncol = 5)
matrix.multiplication(mat3,mat4)
#thrid question:
dataset<-read.csv("car.data.csv",header = FALSE)
dataset
colnames(dataset)
names(dataset)[names(dataset)=="V1"]<-"Buying"
names(dataset)[names(dataset)=="V2"]<-"Maint"
names(dataset)[names(dataset)=="V3"]<-"Doors"
names(dataset)[names(dataset)=="V4"]<-"Persons"
names(dataset)[names(dataset)=="V5"]<-"Lug_boot"
names(dataset)[names(dataset)=="V6"]<-"Safety"
dataset$V7<-NULL
dim(dataset)
str(dataset)
summary(dataset)
colnames(dataset)
head(dataset)
tail(dataset)
View(dataset)
#fourth question:
mean.of.positive.values<-function(values){
  random<-rnorm(values)
  random[random<0]<-NA
  return(random)
}
mean(mean.of.positive.values(10),na.rm = TRUE)
#fifth question:
RMSE <- function(t,y){
  sqrt(mean((t-y)^2))
}
t <-c(3,5,7,9)
y <-c(1,2,4,6)
RMSE(t,y)

