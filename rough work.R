mod2<-lm(price~size+lot+bath+bed+age+garage+active+elem+bath:bed+I(age^2),data=HP)
-I(elem:edge)
levels(HP$elem)[-(4:5)]

mod3<-lm(price~size+lot+bath+bed+age+garage+active+elem+bath:bed+I(age^2),data=subset(HP,elem=="harris"|elem=="edison"))

HP[77,2]<-1.879;HP[77,3]<-4;HP[77,4]<-2.5;HP[77,5]<-3;HP[77,6]<-1975;HP[77,8]<-2;HP[77,11]<-"parker"


mod1<-gnm(price~size+lot+bath+bed+age+garage+active+elem,data=HP)
mod2<-update(mod1,~.+bath:bed+I(age^2))
mod3<-update(mod2,data=A)
summary(mod3)

