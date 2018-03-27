
#Loading the data in R 

currencies <- read.csv('currencies.csv')

head(currencies)

sapply(currencies, function(x) sum(which(x == '')))
sapply(currencies, function(x) sum(is.na(x)))

str(currencies)
plot(currencies$Indian.Rupee, currencies$Australian.Dollar)

currencies$Korean.Won <- as.numeric(currencies$Korean.Won)
currencies$Iranian.Rial <- as.numeric(currencies$Iranian.Rial)
currencies$Indonesian.Rupiah <- as.numeric(currencies$Indonesian.Rupiah)
currencies$Colombian.Peso <- as.numeric(currencies$Colombian.Peso)
currencies$Currency <- NULL
str(currencies)

cormat <- cor(currencies, use = 'pairwise.complete.obs')

head(cormat)

library(reshape2)
melted_cormat <- melt(cormat)
head(melted_cormat)


library(ggplot2)
ggplot(data = melted_cormat, aes(x=Var1, y=Var2, fill=value)) +  geom_tile()

head(melted_cormat)

indian_mat <- melted_cormat[which(melted_cormat$Var1 == 'Indian.Rupee'),]
ggplot(data = indian_mat, aes(x=Var1, y=Var2, fill=value)) +  geom_tile()

## basic correlation heat map
mydata <- mtcars[, c(1,3,4,5,6,7)]
head(mydata)

cormat <- round(cor(mydata),2)
head(cormat)

library(reshape2)
melted_cormat <- melt(cormat)
head(melted_cormat)


library(ggplot2)
ggplot(data = melted_cormat, aes(x=Var1, y=Var2, fill=value)) +  geom_tile()

