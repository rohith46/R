data (iris)
str(iris)

plot(iris$Sepal.Length,iris$Sepal.Width)

points(iris$Petal.Length,iris$Petal.Width,col="red")

plot(iris$Sepal.Length,iris$Sepal.Width,col=iris$Species)

hist(iris$Sepal.Width)
boxplot(iris$Sepal.Length)

str(mtcars)
View(mtcars)

library(ggplot2)
data(mtcars)
ggplot(mtcars,aes(x=cyl,y=mpg)) + geom_point()

ggplot(mtcars, aes(x=factor(cyl),y=mpg)) + geom_point()

ggplot(mtcars, aes(x=factor(cyl),y=mpg)) + geom_point(shape=1,size=4)
ggplot(mtcars, aes(x = wt,col = factor(cyl),y=mpg)) + geom_point(shape=1,size=4)

ggplot(mtcars, aes(x = wt,y = mpg,col = hp,size = disp)) + geom_point()

ggplot(mtcars, aes(x = wt,y = mpg)) + geom_text(aes(label = cyl))
