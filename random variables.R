

library(ggplot2)

games= 75
balls = c(1,1,1,0,0)

number_of_red_balls = vector(mode = 'integer', length = games)

for (n in 1:games) {
  s = sample(balls, 4, replace = T)
  number_of_red_balls[n] = sum(s)
}

number_of_red_balls

table(number_of_red_balls)

qplot(number_of_red_balls) + xlab('Number of red balls') + ylab('count') + ggtitle('Random Variable distributuion')

