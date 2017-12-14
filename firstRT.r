set.seed(71)
exponea.rf <- randomForest(Startup_Data$Dependent.Company.Status ~ Startup_Data$Last.Funding.Amount + Startup_Data$Country.of.company + Startup_Data$Number.of.Investors.in.Seed, data=Startup_Data, importance=TRUE, proximity=TRUE, na.action=na.roughfix)
print(exponea.rf)