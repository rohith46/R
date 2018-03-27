
#outlier treatment
data <- c(sample(x = 1:20, size = 40, replace = T),65,80)
data
summary(data)
 
boxplot(data)

#discarding the outliers from the data set

bench <- 16.75 + 1.5*IQR(data) #q3 +1.5*IQR(data)
bench
data <- data[data < bench ]

boxplot(data)

#method 2 : winsorizing

bench <- 16.50 + 1.5*IQR(data) #q3 +1.5*IQR(data)
bench

data[data > bench] <- bench

boxplot(data)
summary(data)
