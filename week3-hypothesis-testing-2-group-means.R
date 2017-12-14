post <-PostSurvey

hist(post$exclusive)
hist(post$post_exclusive)

diff <- post$exclusive - post$post_exclusive
hist(diff)

t.test(post$exclusive,post$post_exclusive, paired=T)
mean(diff)

t.test(post$exclusive,post$post_exclusive, paired=T, alternative = "less")

fsleep <- post$sleep_Tues[post$gender=='Female']
msleep <- post$sleep_Tues[post$gender=='Male']

hist(fsleep)
hist(msleep)

t.test(fsleep,msleep)

# Make a vector of happiness scores for each sample
underclass_happy <- post$happy[post$classification=='Freshman'|post$classification=='Sophomore']
upperclass_happy <- post$happy[post$classification=='Junior'|post$classification=='Senior']

mean(underclass_happy)
mean(upperclass_happy)

# Check the normality assumption
hist(underclass_happy, xlab='Underclassman Happiness', main='Percent of Time Happy')
hist(upperclass_happy, xlab='Upperclassman Happiness', main='Percent of Time Happy')

# Run independent t-test
t.test(underclass_happy, upperclass_happy)


# Make a vector of difference scores
post$diff_happy <- post$happy - post$post_happy

# Check the normality assumption
hist(post$diff_happy, xlab= 'Difference in Happiness over the Semester', main = 'Happy-Post Happy', breaks = 15)

# Run dependent t-test
t.test(post$happy, post$post_happy, paired=T)

hist(post$hw_hours_HS)
hist(post$hw_hours_college)
hist(post$hw_hours_college - post$hw_hours_HS)
t.test(post$hw_hours_college,post$hw_hours_HS, paired=T)
mean(post$hw_hours_HS)
mean(post$hw_hours_college)

greek <- post$sleep_Sat[post$greek=="yes"]
nongreek <- post$sleep_Sat[post$greek=="no"]
mean(nongreek)
mean(greek)
hist(nongreek, breaks = 10)
hist(greek, breaks = 10)
t.test(greek,nongreek, alternative = "less")

post$diff_hw <- post$hw_hours_college - post$hw_hours_HS
diff_hw_bio <- post$diff_hw[post$major == "Biology"]
diff_hw_nursing <- post$diff_hw[post$major == "Nursing"]
hist(diff_hw_bio)
hist(diff_hw_nursing)
t.test(diff_hw_bio,diff_hw_nursing)

mean(cp_test$cp_left_regenerating - cp_test$cp_right_control)
sd(cp_test$cp_left_regenerating - cp_test$cp_right_control)
SE <- sd(cp_test$cp_left_regenerating - cp_test$cp_right_control)/sqrt(16)
SE
t.test(cp_test$cp_left_regenerating,cp_test$cp_right_control, paired = T)
