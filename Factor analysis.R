# loading marks data set

marks <- read.csv('marks.csv', stringsAsFactors = F)

str(marks)

library(corrplot)

##plotting the correlation
cor(marks[,-1])

corrplot(cor(marks[,-1]))

## scaling the marks

marks_stand <- as.data.frame(scale(marks[-1]))

#factor analysis

fa1 <- factanal(marks_stand, factors = 2, rotation = 'varimax')

fa1_load <-fa1$loadings

#sum of squares of factor analysis

eig1_load <- sum((fa1_load)^2)

#Display Results
fa1_load
eig1_load
