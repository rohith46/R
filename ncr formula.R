
for (i in 1:10)
 x [i]= i*(choose(10,i))*(0.05^i)*(0.95^(10-i))
sum(x)

require(ztable)
pnorm(2) 
pnorm(3)
pnorm(45/25) - pnorm(-55/25)
