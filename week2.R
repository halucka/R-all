head(animaldata)
table(animaldata$Sex)
plot(animaldata$Sex, main='Bar Chart of Animal Genders', xlab='Animal Gender', ylab = 'Frequency')
hist(animaldata$Age.Intake, main='Histogram of intake ages', xlab = "Age at intake")

femaleage <- animaldata$Age.Intake[animaldata$Sex =="Female"]
maleage <- animaldata$Age.Intake[animaldata$Sex =="Male"]

hist(femaleage,main="Histogram of female ages", xlab = "Age at Intake of Female Animals")
hist(maleage,main="Histogram of male ages", xlab = "Age at Intake of Male Animals")

hist(maleage,main="Histogram of male ages", xlab = "Age at Intake of Male Animals", breaks=5)

max(maleage)
which(animaldata$Age.Intake==17)
animaldata[415,]

mean(animaldata$Age.Intake)
median(animaldata$Age.Intake)
sd(animaldata$Age.Intake)
fivenum(animaldata$Age.Intake)

#Find the number of animals that were adopted
table(animaldata$Outcome.Type)

#Pull out only adopted animals
adopted <- animaldata[animaldata$Outcome.Type=="Adoption",]

#Pull out just the days in shelter for the adopted animals
daystoadopt <- adopted$Days.Shelter

#Visualize and describe this variable
hist(daystoadopt)
fivenum(daystoadopt)
mean(daystoadopt)
sd(daystoadopt)
which(animaldata$Days.Shelter==max(daystoadopt))
max(daystoadopt)

table(animaldata$Age.Intake>0)
femaleweight <- animaldata$Weight[animaldata$Sex =="Female" & animaldata$Age.Intake>0]
maleweight <- animaldata$Weight[animaldata$Sex =="Male" & animaldata$Age.Intake>0]
adultdogsweight <- animaldata$Weight[animaldata$Animal.Type =="Dog" & animaldata$Age.Intake>0]
adultcatsweight <- animaldata$Weight[animaldata$Animal.Type =="Cat" & animaldata$Age.Intake>0]

hist(adultcatsweight)
hist(adultdogsweight, breaks = 10)
