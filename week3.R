bull <- BullRiders

plot(bull$YearsPro,bull$BuckOuts14, xlab="Years Pro", ylab = "Buckouts", main = "Plot of years pro vs buckouts")

abline(lm(bull$BuckOuts14 ~ bull$YearsPro))

plot(bull$Events14,bull$BuckOuts14, xlab = "# of events", ylab = "Buckouts", main = "events vs buckouts")

abline(lm(bull$BuckOuts14 ~ bull$Events14))

cor(bull$YearsPro,bull$BuckOuts14)       
cor(bull$Events14,bull$BuckOuts14) 

# correlation matrix
myvars <- c('YearsPro','Events14', 'BuckOuts14')
cor(bull[,myvars])

#Subset for riders that participated in at least one event in 2013
new_bull <- bull[bull$Events13  > 0 ,]

# Visualize and describe the first variable of interest
hist(new_bull$Rides13)
fivenum(new_bull$Rides13)
mean(new_bull$Rides13)
sd(new_bull$Rides13)

# Visualize and describe the second variable of interest
hist(new_bull$Top10_13)
fivenum(new_bull$Top10_13)
mean(new_bull$Top10_13)
sd(new_bull$Top10_13)

# Create a scatterplot
plot(new_bull$Rides13,new_bull$Top10_13)

# Add line of best fit
abline(lm(new_bull$Top10_13~new_bull$Rides13))

# Calculate the correlation coefficient
cor(new_bull$Rides13,new_bull$Top10_13)

# Create a correlation matrix 
vars <- c("Top10_13", "Rides13")
cor(new_bull[,vars])

# LAB WEEK 3
new_bull12 <- bull[bull$Events12 > 0,]
hist(new_bull12$Earnings12, breaks = 20)
fivenum(new_bull12$Earnings12)
vars <- c("Earnings12", "RidePer12", "CupPoints12")
cor(new_bull12[,vars])
plot(new_bull12$RidePer12,new_bull12$Earnings12)
plot(new_bull12$CupPoints12,new_bull12$Earnings12)
which(new_bull12$Earnings12 == max(new_bull12$Earnings12))
#Subset the data
nooutlier <- new_bull12[new_bull12$Earnings12 < 1000000 ,] 
cor(nooutlier[,vars])
plot(nooutlier$RidePer12,nooutlier$Earnings12)
plot(nooutlier$CupPoints12,nooutlier$Earnings12)

cor(exam$Minutes.Spent.Studying.,exam$Exam.Grade)
plot(exam$Minutes.Spent.Studying.,exam$Exam.Grade)
nooutlierexam <- exam[exam$Exam.Grade!=92,]
cor(nooutlierexam$Minutes.Spent.Studying.,nooutlierexam$Exam.Grade)

new_bull <- bull[bull$Rides14>0,]
new_bull_events <- bull[bull$Events14>0,]
RidesPerEvent14 <- new_bull$Rides14/new_bull$Events14
hist(RidesPerEvent14)
fivenum(RidesPerEvent14)
plot(RidesPerEvent14,new_bull$Rank14)
abline(lm(new_bull$Rank14 ~ RidesPerEvent14))
cor(RidesPerEvent14,new_bull$Rank14)