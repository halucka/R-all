summary(BikeData)
bike <- BikeData
dailies <- bike [bike$cyc_freq == 'Daily',]
table(dailies$gender)
mean(dailies$age)
femdailies <- dailies [dailies$gender == 'F',]
maledailies <- dailies [dailies$gender == 'M',]
mean(femdailies$age)
mean(maledailies$age)
thirty <- maledailies [maledailies$age >= 30,]
students <- bike[bike$student == 1,]
distance <-students$distance
table(students$cyc_freq)
