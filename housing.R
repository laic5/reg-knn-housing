setwd("C:/Users/Cindy/Documents/Davis/Summer")
dat <- read.table("housing.data.txt", header=F)
colnames(dat) = c("CRIM","ZN","INDUS", "CHAS","NOX","RM","AGE","DIS","RAD","TAX","PTRATIO","B","LSTAT","MEDV")

#going to regress predictors on MEDV, median value of homes

set.seed(100)
train = sample(506, 506*.9)
#note: -train will access the 10% in the validation set

#examine predictors
hist(dat$CRIM) #right skewed, no noticeable outliers
hist(dat$ZN)
hist(dat$INDUS) #spike at 18
hist(dat$CHAS) #note, this is an dummy variable, indicator
hist(dat$NOX)
hist(dat$RM)
hist(dat$AGE) #left skewed
hist(dat$DIS) #right skewed
hist(dat$RAD) #double peaks around 3 and 24
hist(dat$TAX) #peak around 680
hist(dat$PTRATIO) #peak at 20
hist(dat$B) #very left skewed. low values to the left, peak at 400
hist(dat$LSTAT) #right skewed
hist(dat$MEDV)


#Crime
par(mfrow=c(2,3))
hist((dat$CRIM)^0.1)
hist((dat$CRIM)^0.2)
hist((dat$CRIM)^0.3)
hist((dat$CRIM)^0.4)
hist((dat$CRIM)^0.5)
hist(log(dat$CRIM)) #

plotVarTransformations<-function(df,colNum){
  variable<-as.numeric(df[,colNum])
  transformations<-cbind(sapply(seq(.1,.5,.1),function(i)variable^i),log(variable))
  colnames(transformations)<-c(as.character(seq(0.1,0.5,0.1)),"log")
  par(mfrow=c(2,3))
  sapply(1:ncol(transformations),function(i)hist(transformations[,i],main=colnames(transformations)[i]))
  par(mfrow=c(1,1))
}

plotVarTransformations(dat,2)   #ZN log
plotVarTransformations(dat,3)
plotVarTransformations(dat,7)
