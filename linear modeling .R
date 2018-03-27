x <- 1:10
y <- c(11,12,18,14,17,NA,NA,19,NA,27)
z <- c(19,11,2,14,20,4,9,10,18,1)
w <- c(1,4,7,10,3,5,7,6,6,9)

data <- data.frame(x,y,z,w)

View(data)


#correlated variable

cor(data)

cor(data, use = 'complete.obs')


symnum(cor(data, use = 'complete.obs'))


Ind <- function(t)
{ 
  x <- dim(length(t))
  x[which(is.na(t))] = 0
  x[which(!is.na(t))] = 1
  return(x)
}

data$I <- Ind(data$y)
 
data

lm(y ~ x, data = data)

#y = 9.743 + 1.509*x


for (i in 1:nrow(data))
{ 
  if (data$I[i] == 0)
  {
    data$y[i]= 9.743 + 1.509*data$x[i]
  }
}

data


math <- c(88,90,91,78,NA,75,NA,40)


math[is.na(math)] <- mean(math[!is.na(math)])
math


math[is.na(math)] <- median(math[!is.na(math)])
