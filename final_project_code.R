lowbwt<-read.csv("lowbwt.csv") # load data set
head(lowbwt) # preview results
summary(lowbwt) # summary stats
str(lowbwt) 
attach(lowbwt)
RACEFACTOR=as.factor(RACE) # convert race values to factors
SMOKEFACTOR=as.factor(SMOKE) # convert smoke values to factors
is.factor(RACEFACTOR) # verify the racefactor values are in fact now stored as factors
is.factor(SMOKEFACTOR) # verify the smokefactor values are in fact now stored as factors
lm2.lowbwt=lm(BWT~LWT+RACEFACTOR+SMOKEFACTOR, data=lowbwt) #run regression and store as a variable
summary(lm2.lowbwt, data=lowbwt) # summary output of regression

aov.out = aov(BWT~RACEFACTOR+SMOKEFACTOR, data=lowbwt)
TukeyHSD(aov.out)
