vv<-read.table("E:/R/Code/rfile.txt",header=TRUE);
iter<-vv$iter;
for (n in 0:199) {
  
  x<-vv$x[iter == n]; 
  y<-vv$y[iter == n]; 
  z<-vv$new[iter == n];
  plot(x,y,xlim=c(0,1),ylim=c(0,1),pch=20,col=1+z,xlab="",ylab="",axes=FALSE);
  dev.copy(png,filename=paste("E:/R/Code/Zorm_",n,".png",sep="")); 
  dev.off ();
}
