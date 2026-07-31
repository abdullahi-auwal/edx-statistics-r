## ------------------ data exploration analyses -----------------------
# loading the Using R package to access some datasets
library("UsingR")
x <- father.son$fheight

##----------------------------------------------
round(sample(x, 20), 1)
##-------------------- histogram --------------------------
hist(x)
hist(x, breaks = seq(floor(min(x)), ceiling(max(x))), main = "Height Histogram", xlab = "Height in inches")

##----------------------------------------------
xs <- seq(floor(min(x)),  ceiling(max(x)), 0.1)
plot(xs, ecdf(x)(xs), type="l", xlab = "Height in inches", ylab = "F(x)")
## ------------------ normal approximation ----------------------------
mean(x<60)
pnorm(60,mean(x),sd(x))
##------------------ qqplot -----------------------------
ps <- seq(0.01, 0.99, 0.01)
qs <- quantile(x, ps)
normalqs <- qnorm(ps, mean(x), sd(x))
plot(normalqs,qs, xlab="Normal percentiles",ylab="Height in percentiles")
abline(0,1)##identity line
##--------------------------------------
qqnorm(x)
qqline(x)

##---------- boxplot ----------------
###----------------------------------
hist(exec.pay)
qqnorm(exec.pay)
qqline(exec.pay)

##---------------------------------
boxplot(exec.pay, ylab="10,000s of dollars", ylim=c(0, 400))
