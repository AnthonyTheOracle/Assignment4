
Freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
Bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 125, 176)
FirstRead <- c("bad", "bad", "bad", "bad", "good", "good", "good", "good", "NA", "bad")
SecondRead <- c("low", "low", "high", "high", "low", "low", "high", "high", "high", "high")
FinalDecision <- c("low", "high", "low", "high", "low", "high", "low", "high", "high", "high")
Patients <- c("P1", "P2", "P3", "P4", "P5", "P6", "P7", "P8", "P9", "P10")


Observation.df <- na.omit(data.frame(Patients, Freq, Bloodp, FirstRead, SecondRead, FinalDecision))
Observation.df

BoxFirstRead <-boxplot(Bloodp~FirstRead
                       ,main="General Doctor Assessment"
                       ,ylab="Blood Pressure"
                       ,xlab="First Assessment"
                       ,las=1
                       ,col=c("Blue","Red") 
                       ,na.rm=TRUE)

BoxFirstRead <-boxplot(Bloodp~SecondRead
                       ,main="External Doctor Assessment"
                       ,ylab="Blood Pressure"
                       ,xlab="Second Assessment"
                       ,las=1
                       ,col=c("Blue","Red") 
                       ,na.rm=TRUE)

BoxFinalDecision <-boxplot(Bloodp~FinalDecision
                        ,main="Emergency Unit Decision"
                        ,ylab="Blood Pressure"
                        ,xlab="MD Rating"
                        ,col=c("Blue","Red") 
                        ,las=1)

hist(Bloodp
     ,main="Blood Pressure and Hospital Visit"
     ,xlab="Blood Pressure"
     ,ylab = "Hospital Visit Frequency"
     , col=c("Blue","Red")
     #,breaks=25
     #,xlim = c(32,210)
     #,xaxp=c(32,210,25)
     #,ylim=c(0,1)
     #,yaxp=c(0,1,10)
     )
abline(h=seq(0,3,0.5), col="gray", lty="dotted" )


