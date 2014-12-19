library(ggplot2)
#load in the the Tajima'ss D data, one table for each phase
TD5<-read.table("/Users/simonrenny-byfield/test_angst/5/teosinte20thetas.gz.pestPG",header=T, skip = 1)
TD10<-read.table("/Users/simonrenny-byfield/test_angst/10/teosinte20thetas.gz.pestPG",header=T, skip = 1)
TD15<-read.table("/Users/simonrenny-byfield/test_angst/15/teosinte20thetas.gz.pestPG",header=T, skip = 1)
TD20<-read.table("/Users/simonrenny-byfield/test_angst/20/teosinte20thetas.gz.pestPG",header=T, skip =1)

#plot a 2x2 plot for each of the conditions, first plot Tajima's D

par(mfrow=c(2,2))

#plot 5 first
scatter.smooth(TD5[,14]/5000,TD5[,9], pch = 16, cex=.5, xlab="proportion oa bases covered", ylab="Tajima's D", col ="red")
#plot 10 
scatter.smooth(TD10[,14]/5000,TD10[,9], pch = 16, cex=.5, xlab="proportion oa bases covered", ylab="Tajima's D", col ="red")
#plot 15 
scatter.smooth(TD15[,14]/5000,TD15[,9], pch = 16, cex=.5, xlab="proportion oa bases covered", ylab="Tajima's D", col ="red")
#plot 20 
scatter.smooth(TD20[,14]/5000,TD20[,9], pch = 16, cex=.5, xlab="proportion oa bases covered", ylab="Tajima's D", col ="red")

#now plot 2x2 for pi
#for 5 
ylim=c(0,0.15)
scatter.smooth(TD5[,14]/5000,(TD5[,5]/TD5[,14]), pch = 16, cex=.5, xlab="proportion of bases covered", ylab = "pi", col = "red", main="min 5 individuals",ylim=ylim)
#for 10 
scatter.smooth(TD10[,14]/5000,(TD10[,5]/TD10[,14]), pch = 16, cex=.5, xlab="proportion of bases covered", ylab = "pi", col = "red", main="min 10 individuals",ylim=ylim)
#for 15 
scatter.smooth(TD15[,14]/5000,(TD15[,5]/TD15[,14]), pch = 16, cex=.5, xlab="proportion of bases covered", ylab = "pi", col = "red",main="min 15 individuals",ylim=ylim)
#for 20 
scatter.smooth(TD20[,14]/5000,(TD20[,5]/TD20[,14]), pch = 16, cex=.5, xlab="proportion of bases covered", ylab = "pi", col = "red",main="min 20 individuals",ylim=ylim)