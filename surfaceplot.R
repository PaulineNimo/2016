data<-read.csv("E:/R/Input/Plot Data.csv")
X<-data$Alpha
Y<-data$Beta
Z<-data$Gama
plot.color<-data$Category
main.title="Insert plot title here"
x.title="Insert x axis title here"
y.title="Insert y axis title here"
z.title="Insert z axis title here"
persp(x=X,y=Y,z=Z,xlab=x.title,ylab=y.title,zlab=z.title,main=main.title,scale=TRUE,col=plot.color)

library(akima)
as.integer(data$Alpha,data$Beta,data$Gama)
changing <- with(data[1:2500,],interp(Alpha,Beta,Gama))
