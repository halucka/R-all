#Select bull riders from the US
USA <-bull[bull$Country=="USA",]

# Summarize the bull rider weights
mean(USA$Weight)
sd(USA$Weight)

# Visualize the weight distribution
hist(USA$Weight, main='Histogram of US Bull Rider Weights',xlab='Weight (lbs)')

# Run the single sample t-test
t.test(USA$Weight, mu=190)



active2014 <-bull[bull$Events14>4,]
meanPer <- mean(active2014$RidePer14)
sdPer <- sd(active2014$RidePer14)
tstat <- (meanPer-0.5)/(sdPer/sqrt(42))
t.test(active2014$RidePer14, mu=0.5)
hist(active2014$RidePer14)

earnings_per <- bull$Earnings12/bull$Events12
hist(earnings_per)
bull$earnings_per <- bull$Earnings12/bull$Events12
bull$logEarningsPerEvent <- log(bull$earnings_per)
hist(bull$logEarningsPerEvent)
mean(bull$logEarningsPerEvent, na.rm=TRUE)
t.test(bull$logEarningsPerEvent, mu = 9)

weights <- c(29.4, 29.0, 28.4, 28.8, 28.9, 29.3, 28.5, 28.2)
mean(weights)
sd(weights)
