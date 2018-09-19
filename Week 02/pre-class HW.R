### PART I

exp.draws.1<-as.vector(rexp(n=200))
mean_1=mean(exp.draws.1)
sd_1=sd(exp.draws.1)

exp.draws.0.2=rexp(n=200,rate=0.2)
exp.draws.5=rexp(n=200,rate=5)
exp.draws.7.3=rexp(n=200,rate=7.3)
exp.draws.10=rexp(n=200,rate=10)

means<-c(mean(exp.draws.1), mean(exp.draws.0.2), mean(exp.draws.5), mean(exp.draws.7.3), mean(exp.draws.10))
sds<-c(sd(exp.draws.1), sd(exp.draws.0.2), sd(exp.draws.5), sd(exp.draws.7.3), sd(exp.draws.10))
rates<-c(1, 0.2, 5, 7.3, 10)

### ASSIGNMENTS
#a. Use the hist() function to produce a histogram of your standard exponential distribution. 
hist(exp.draws.1)
#b. Use plot() with this vector to display the random values from your standard distribution in order. 
plot(exp.draws.1)
#c. Now, use plot() with two arguments -- any two of your other stored random value vectors -- to create a scatterplot of the two vectors against each other. 
plot(exp.draws.7.3, exp.draws.5)

#a. The five means versus the five rates used to generate the distribution. 
plot(rates, means)
## COMMENT: we know the mean of a r.v. with an exponential distribution equals \lambda^-1. For this reason
## we see an inverse relationship in the plot.

#b. The standard deviations versus the rates. 
plot(rates, sds)
## COMMENT: we know the s.d. of a r.v. with an exponential distribution equals also \lambda^-1. For this reason
## we see an inverse relationship in the plot.


#c. The means versus the standard deviations.
plot(means, sds)
## COMMENT: The mean and s.d. of a r.v. with an exponential distribution are equal. For this reason,
## the dots in the plot are along the 45-degree line.

### PART II
big.exp.draws.1<-rexp(n=1100000)
big_mean_1=mean(big.exp.draws.1)
big_sd_1=sd(big.exp.draws.1)

#b.
hist(big.exp.draws.1)
## COMMENT: it does match the function (1-e^{-x}), as we would expect, given the large number of draws.

#c. 
mean_bigger_1=mean(big.exp.draws.1[big.exp.draws.1>1])

#d
big.exp.draws.1.mat<-matrix(big.exp.draws.1,nrow=1100, ncol=1000, byrow=TRUE)
hist(big.exp.draws.1.mat)
## COMMENT: I believe nothing happend to my data. I receive the same result as in 5b.

#e
mean(big.exp.draws.1.mat,,371)

#f
colmeans=colMeans(big.exp.draws.1.mat)
hist(colmeans)
## COMMENT: I does not match results for 5b, because this is not the distribution of an r.v. with
## an exponential distribution, but a distribution of means. And as we know from the Central Limit Theorem,
## the distribution of means converges to a normal distribution.


