

#bank <- read.csv("https://raw.githubusercontent.com/kshitijjain91/Credit-Risk-Capstone/master/datasets/Demogs_v1.csv")

income <- bank$Income

head(income,25)

n= 25
k = 400

samp_means <- vector(mode = 'numeric', length = k)

for (samp_num in 1:k){
  s <- sample(income, n, replace = F)
  samp_means[samp_num] = mean(s, na.rm = T)
}

pop_mean <- mean(income, na.rm = T)
mean_of_samp_means <- mean(samp_means, na.rm = T)
pop_mean
mean_of_samp_means

pop_sd <- sd(income, na.rm = T)
pop_sd_by_rootn <- pop_sd/sqrt(n)

stand_err <- sd(samp_means,na.rm = T)
stand_err
pop_sd_by_rootn

require(ggplot2)
samp_means <- data.frame(samp_means)
ggplot(samp_means, aes(samp_means)) + geom_density()
