# C/(1+a)
# 75000/(1+a)=500

75000/500 - 1
# f(t) = C/(1+a*b^(-t))
# f(1) = 75000/(1+149/b) = 750
# 149/b = 99
149/99
# 0.85^t = 0.1
# t*ln(0.85) = ln(0.1)
# t = ln(0.1)/ln(0.85)
log(0.1)/log(0.85)

world <- WorldBankData
gbr <- world[world$Country.Code=="GBR",]
gbr2000 <- gbr[gbr$year >= 2000 & gbr$year < 2010,]

time <- gbr2000$year - 2000

mv <- gbr2000$motor.vehicles

plot(time, mv)

expFit(time, mv)
logisticFit(time,mv)

tripleFit(time,mv)

expFitPred(time,mv,12)
logisticFitPred(time,mv,12)


# Subset data for just the United States and name the new data frame "us"
us <- world[world$Country.Code == "USA",]

# Select the years from 1990 and name the new data frame "us_select"
us_select <- us[us$year >= 1990, ]

# Create a new variable in our datset called internet.mil to make the number of users more interpretable (into millions)
us_select$internet.mil <- us_select$internet.users / 1000000

# Create a new variable in our dataset called time that represents "years since 1990"
us_select$time <- us_select$year - 1990

# Select the first 10 years (from 1990 to 1999) and name the new data frame "us_select_10"
us_select_10 <- us_select[us_select$time < 10,]

# Use a function to fit an exponential and logistic model for 1990-1999
expFit(us_select_10$time, us_select_10$internet.mil)
logisticFit(us_select_10$time, us_select_10$internet.mil)

# Based on the prior model parameters, predict the number of internet users in 2006
e <- expFitPred(us_select_10$time, us_select_10$internet.mil, 16)
l <- logisticFitPred(us_select_10$time, us_select_10$internet.mil, 16)

world$internet.proportion <- world$internet.users / world$population
from1990 <- world[world$year>=1990,]
from1990$yearsSince1990 <- from1990$year -1990
denmark <- from1990[from1990$Country == "Denmark",]
denmark$yearsSince1990 <- denmark$year-1990

expFit(denmark$yearsSince1990,denmark$internet.proportion)
logisticFit(denmark$yearsSince1990,denmark$internet.proportion)

# expFit: f(t) = a*b^t
# 0.7 = 0.00585*1.34666^t
# 1.34666^t = 0.7/0.00585
# t*log(1.34666) = log(0.7/0.00585)
# t = log(0.7/0.00585)/log(1.34666)
log(0.7/0.00585)/log(1.34666)

# logisticFit: f(t) = C/(1+ab^(-t))
0.7 = 0.89668/(1+308.8345*1.73124^(-t))
1.73124^(-t) = (0.89668/0.7 -1)/308.8345
t = -log((0.89668/0.7 -1)/308.8345)/log(1.73124)
-log((0.89668/0.7 -1)/308.8345)/log(1.73124)

# 2002 7 147

# 325 = 19*1.34^t
325/19 = 1.34^t 
log(325/19)/log(1.34)

BrazilFrom1995 <- world[world$Country=="Brazil" & world$year >= 1995,]
BrazilFrom1995$yearsSince1995 <- BrazilFrom1995$year-1995
BrazilFrom1995$mobile.users.mil <- BrazilFrom1995$mobile.users/10^6

tripleFit(BrazilFrom1995$yearsSince1995,BrazilFrom1995$mobile.users.mil)
logisticFitPred(BrazilFrom1995$yearsSince1995,BrazilFrom1995$mobile.users.mil,2025-1995)

# logisticFit: f(t) = C/(1+ab^(-t))
2000/(1+152.1*2.17^(-t))
152.1*2.17^(-t) = 1
2.17^(-t) = 1/152.1
t = -log(1/152.1)/log(2.17)
