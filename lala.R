par(mfcol=c(3,2)) # set up graphics
for (i in 1:6){
x[i]=ts(cumsum(rnorm(100,0.01,1))) # the data
reg=lm(x[i]~0+time(x),na.action=NULL)} # the regression
plot(x) # plot data
lines (0.01*time(x), col="red", lty="dashed") # plot mean
abline(reg, col="blue") # plot regression line

set.seed(154) # so you can reproduce the results
w = rnorm(200,0,1); x = cumsum(w) # two commands in one line
wd = w +.2; xd = cumsum(wd)
plot.ts(xd, ylim=c(-5,55), main="random walk")
lines(x); lines(.2*(1:200), lty="dashed")

lmA <- adf.test.2(stockret, int=T, trend=T, k=8)
ifelse(min(ljung.box.test.1(lmA$resid, seq(1,20,1))[,2]) > 0.05, "a", "b")

auto.arima(stockret, stationary=T, max.P=0, max.Q=0, d=0, D=0)$arma[1]

auto.arima(stockret, stationary=T, max.P=0, max.Q=0, d=0, D=0)$arma[2]

arma.mod <- auto.arima(stockret, stationary=T, max.P=0, max.Q=0, d=0, D=0)
ifelse(min(arch.check(arma.mod)[,3]) < 0.05, "a", "b")

nar <- arma.mod$arma[1]
nma <- arma.mod$arma[2]
spec <- ugarchspec(variance.model = list(model = "fGARCH", submodel = "GARCH",garchOrder=c(7,0)),mean.model=list(armaOrder=c(nar,nma),include.mean=F))
rob.mat <- arch.mod@fit$robust.matcoef
length(which((rob.mat[(nar + nma + 2):nrow(rob.mat), 4]) > 0.05))

nNA <- which(is.na(arch.mod@fit$resid) == F)
arch.sresid <- arch.mod@fit$residuals/arch.mod@fit$sigma
ifelse(min(arch.check.2(arch.sresid)[, 3]) < 0.05, "a", "b")

spec <- ugarchspec(variance.model = list(model = "fGARCH", submodel = "GARCH",
garchOrder=c(1,1)),mean.model=list(armaOrder=c(nar,nma),include.mean=F))
garch.mod <- ugarchfit(data = as.data.frame(stockret), spec = spec)
nNA <- which(is.na(garch.mod@fit$resid) == F)
garch.sresid <- garch.mod@fit$residuals/garch.mod@fit$sigma
ifelse(min(ljung.box.test.1(garch.sresid[nNA], seq(0, 50, 1))) >+ 0.05,"a","b")



