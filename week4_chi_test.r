gtab <- table(acl$Grammy)

prop.table(gtab)

gtab2 <- table(acl$Grammy,acl$Gender)

gtab2

prop.table(gtab2,1)
prop.table(gtab2,2)

barplot(gtab, main="ACL Grammy Winners", xlab = "Grammy Winner", ylab = "Counts")
barplot(gtab2, legend = T, main="Gender by Grammy Winner", xlab = "Gender", ylab = "Counts", beside = T)

barplot(prop.table(gtab2,2))

gtab <- table(acl$Grammy)
gtab

claimp <- c(2/3,1/3) #order alphabetically ("N", "Y")

chisq.test(gtab, p = claimp)
chisq.test(gtab, p = claimp)$expected        

# chi-sq test of independence
grammyage <- table(acl$Grammy, acl$Age.Group)
grammyage

chisq.test(grammyage)$expected
chisq.test(grammyage, correct = F) # correction = False - we have met the assumptions

#Question 1 (Goodness of Fit)
# Create a table of counts for Gender
gender_tab <-table(acl$Gender)
gender_tab

# Create vector of expected proportions
ExpGender <- c(.50, .50)

# Check expected counts assumption
chisq.test(gender_tab, p=ExpGender)$expected

# Run goodness of fit
chisq.test(gender_tab, p=ExpGender)


#Question 2 (Test of Independence)
# Create two-way table
gender_top10 <-table(acl$Gender, acl$BB.wk.top10)
gender_top10
prop.table(gender_top10,1)
# Generate expected counts
chisq.test(gender_top10, correct=FALSE)$expected

# Run test of independence
chisq.test(gender_top10, correct=FALSE)

####################################

#Question 1 (Goodness of Fit)
# Create a table of counts for Gender
genre_tab <-table(acl$Genre)
genre_tab

# Create vector of expected proportions
ExpGenre <- c(.25, .25, .25, .25)

# Check expected counts assumption
chisq.test(genre_tab, p=ExpGenre)$expected

# Run goodness of fit
chisq.test(genre_tab, p=ExpGenre)


#Question 2 (Test of Independence)
# Create two-way table
genre_twitter100k <-table(acl$Genre, acl$Twitter.100k)
genre_twitter100k
prop.table(genre_twitter100k,1)
# Generate expected counts
chisq.test(genre_twitter100k, correct=FALSE)$expected

# Run test of independence
chisq.test(genre_twitter100k, correct=FALSE)


acl$Recent[acl$Year < 2012] <- 0 
acl$Recent[acl$Year >= 2012] <- 1

recentGender <- table(acl$Gender,acl$Recent)
recentGender


chisq.test(recentGender)$expected
chisq.test(recentGender, correct=FALSE)
