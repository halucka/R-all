gtab <- table(acl$Grammy)

prop.table(gtab)

gtab2 <- table(acl$Grammy, acl$Gender)

gtab2

prop.table(gtab2)

# by row
prop.table(gtab2,1)
# by column
prop.table(gtab2,2)

# Grouped bar charts
# simple bar plot
barplot(gtab, main="ACL Grammy winners", xlab="Grammy winners", ylab="Counts")

# legend = T - true
barplot(gtab2, legend=T, main="Gender by Grammy Winner", ylab = "Gender")
barplot(gtab2, legend=T, main="Gender by Grammy Winner", ylab = "Gender", beside=T)
barplot(prop.table(gtab2,2)) # "mosaic plot" - plotting the relative frequencies

#Subset the data for artists age 30 or older
older <-acl[acl$Age>=30,]

# Create tables of marginal distributions
genre <- table(older$Genre)
genre
gender <- table(older$Gender)
gender

# Create contingency table 
twoway <- table(older$Gender,older$Genre)
twoway

# Visualize the counts
barplot(twoway, legend=T, beside=T)

# Calculate P(A): the probability of each genre being played
prop.table(genre)

# Calculate P(A|B): the probability of each genre being played, given the artist???s gender
prop.table(twoway,1)

table(acl$Gender)
males <- acl[acl$Gender=="M",]

table(males$Genre)
maleGrammy <- table(males$Grammy)
prop.table(maleGrammy)

twoway <- table(males$Grammy, males$Genre)
twoway
prop.table(twoway,1)
# probability of winning Grammy given artist's genre
prop.table(twoway,2)
barplot(prop.table(twoway,2), main="Grammy Winners by Genre", legend =T)

table(acl$Facebook.100k)
table(acl$Age.Group)

twowayFB <- table(acl$Facebook.100k, acl$Age.Group)
twowayFB

prop.table(twowayFB,2)
