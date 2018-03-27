data("diamonds")

ggplot(diamonds,aes(x = carat, y = price)) + geom_point()
ggplot(diamonds,aes(x = carat, y = price)) + geom_point() + geom_smooth()
ggplot(diamonds,aes(x = carat, y = price, col = clarity)) + geom_smooth()
ggplot(diamonds,aes(x = carat, y = price, col = clarity)) + geom_point()
ggplot(diamonds,aes(x = carat, y = price, col = clarity)) + geom_point(alpha = 0.4)

diamond_plot <-ggplot(diamonds,aes(x = carat, y = price))
diamond_plot + geom_point(aes(col = clarity),alpha = 0.4)

cyl.am <- ggplot(mtcars, aes(x = factor(cyl)))
cyl.am <- cyl.am + aes(fill = factor(am))
cyl.am + geom_bar()
cyl.am + geom_bar(position = 'fill')


ggplot(mtcars, aes(x = cyl, y = wt)) + geom_point(position = 'jitter')

jitter_posn <- position_jitter(width = 0.5) 

ggplot(mtcars, aes(x = cyl, y = wt)) + geom_jitter(position = jitter_posn)

ggplot(diamonds, aes(x = carat, y = price)) + geom_jitter(position = jitter_posn)


ggplot(mtcars, aes(x = cyl, fill = factor(am))) + geom_bar(position = 'stack')
ggplot(mtcars, aes(x = cyl, fill = factor(am))) + geom_bar(position = 'fill')
ggplot(mtcars, aes(x = cyl, fill = factor(am))) + geom_bar(position = 'dodge')

ggplot(mtcars, aes(x =mpg, fill = factor(cyl))) + geom_histogram(binwidth = 1)

ggplot(mtcars, aes(x =mpg, col = cyl)) + geom_freqpoly(binwidth = 1)

ggplot(mtcars, aes(x = mpg)) + geom_histogram(binwidth = 1)

ggplot(mtcars, aes(x = mpg)) + geom_histogram(binwidth = 1 , fill = 'blue')


help(economics) 
data(economics)
str(economics)
head(economics)

ggplot(economics, aes(x = date, y = unemploy)) + geom_line()

#population grows
ggplot(economics, aes(x = date, y = unemploy/pop)) + geom_line()
ggplot(economics, aes(x = date, y = unemploy/pop, col = psavert)) + geom_line() + geom_point()

recent <- economics[economics$date > as.Date('2013-01-01'),]

ggplot(recent, aes(date, unemploy, col = psavert)) + geom_line() + geom_point() 

ggplot(recent, aes(date, unemploy)) + geom_line() 
