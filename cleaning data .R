install.packages('xlsx')
library('xlsx')

getwd()
setwd('#')

customer <- read.csv('customer.csv', header = T, sep = ',')
internet <- read.xlsx('internet.xlsx', sheetName = 'internet', header = T )
churn <- read.csv('churn.csv')

#duplicated values 

head(customer)
colnames(customer)
dim(customer)
length(unique(customer$customerID))

customer[which(duplicated(customer$customerID)),]

customer[which(customer$customerID %in% c('9237-HQITU','6575-SUVOI')),]

customer <- customer[-which(duplicated(customer$customerID) == T),]

sum(duplicated(customer$customerID))

#missing values
sum(is.na(customer$customerID))

sapply(customer, function(x) length(which(x == "")))

#treating other columns
table(customer$gender)
summary(customer$gender)

customer$gender <- tolower(customer$gender)
table(customer$gender)

is.factor(customer$Partner)
table(customer$Partner)
customer$Partner <- tolower(customer$Partner)
table(customer$gender)


sapply(customer, function(x) is.factor(x))

table(customer$Partner)
table(customer$SeniorCitizen)
table(customer$Dependents)

#writing the file to csv

write.csv(customer, file = '/Users/rohithbharatha/Desktop/customer_clean.csv' ,row.names = F )


# Internet file 

dim(internet)

colnames(internet)

head(internet)
str(internet)
sapply (internet, function(x) is.factor(x))
#duplicate values
sum(duplicated(internet))
table(duplicated(internet))
#missing values
sum(is.na(internet))

sapply (internet, function(x) length(which(is.na(x)))) # na in data frame
sapply(internet, function(x) length(which(x == " "))) #spaces in data frame

summary(internet$X__1)

colnames(internet)[which(colnames(internet)=="NA.")] = "internet_ser"
colnames(internet)
summary(internet$internet_ser)
internet$internet_ser = tolower(internet$internet_ser)
internet$internet_ser = as.factor(internet$internet_ser)
summary(internet$internet_ser)
