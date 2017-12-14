mean(survey$age)
sd(survey$age)

hist(survey$age)

sample(survey$age, size=30)

myxbar <- rep(NA,1000)

for (i in 1:1000){
  
  mysamp <-sample(survey$age, size=30)
  myxbar[i] <- mean(mysamp)
}

hist(myxbar)
mean(myxbar)
sd(myxbar)

sd(survey$age)/sqrt(30)


#########################################################

# Calculate the population parameters
hist(survey$name_letters)
fivenum(survey$name_letters)
mean(survey$name_letters)
sd(survey$name_letters)


# Draw 1,000 samples of n=5 and find the mean of each sample.
xbar5 <-rep(NA, 1000)
for (i in 1:1000)
{x <-sample(survey$name_letters, size =5)
xbar5[i] <-  mean(x)}


# Graph the histogram of 1,000 sample means.
hist(xbar5,xlim=c(2,10))


# Calculate the mean and sd of the sampling distribution.
mean(xbar5)
sd(xbar5)

# Compare to the std dev predicted by the CTL.
sd(survey$name_letters)/sqrt(5)


#Repeat for samples of size n=15
xbar15 <-rep(NA, 1000)
for (i in 1:1000)
{x <-sample(survey$name_letters, size =15)
xbar15[i] <- mean(x)}
hist(xbar15,xlim=c(2,10))
mean(xbar15)
sd(xbar15)
sd(survey$name_letters)/sqrt(15)



#Repeat for samples of size n=25
xbar25 <-rep(NA, 1000)
for (i in 1:1000)
{x <-sample(survey$name_letters, size =25)
xbar25[i] <- mean(x)}
hist(xbar25,xlim=c(2,10))
mean(xbar25)
sd(xbar25)
sd(survey$name_letters)/sqrt(25)

## Happiness analysis ##

# Calculate the population parameters
hist(survey$happy)
fivenum(survey$happy)
mean(survey$happy)
sd(survey$happy)


# Draw 1,000 samples of n=5 and find the mean of each sample.
xbar5 <-rep(NA, 1000)
for (i in 1:1000)
{x <-sample(survey$happy, size =5)
xbar5[i] <-  mean(x)}


# Graph the histogram of 1,000 sample means.
hist(xbar5,xlim=c(0,100))


# Calculate the mean and sd of the sampling distribution.
mean(xbar5)
sd(xbar5)

# Compare to the std dev predicted by the CTL.
sd(survey$happy)/sqrt(5)


#Repeat for samples of size n=15
xbar15 <-rep(NA, 1000)
for (i in 1:1000)
{x <-sample(survey$happy, size =15)
xbar15[i] <- mean(x)}
hist(xbar15,xlim=c(0,100))
mean(xbar15)
sd(xbar15)
sd(survey$happy)/sqrt(15)



#Repeat for samples of size n=25
xbar25 <-rep(NA, 1000)
for (i in 1:1000)
{x <-sample(survey$happy, size =25)
xbar25[i] <- mean(x)}
hist(xbar25,xlim=c(0,100))
mean(xbar25)
sd(xbar25)
sd(survey$happy)/sqrt(25)

# Calculate the population parameters
hist(survey$austin)
fivenum(survey$austin)
mean(survey$austin)
sd(survey$austin)

sd(survey$austin)/sqrt(10)

xbar10 <-rep(NA, 1000)
for (i in 1:1000)
{x <-sample(survey$austin, size =10)
xbar10[i] <- mean(x)}
hist(xbar10,xlim=c(0,10))
mean(xbar10)
sd(xbar10)
sd(survey$austin)/sqrt(10)

p_yellow1 <- pnorm(72, pop_mean, pop_sd)    #using x, mu, and sigma
p_yellow2 <- pnorm(z)                       #using z-score of 2.107

pnorm(3.2,3.08,0.08) - pnorm(2.9,3.08,0.08)
