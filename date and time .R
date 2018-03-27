rounds <- read.csv("rounds2.csv", nrows=100)
rounds
str(rounds)
fund_date <-rounds$funded_at
typeof(fund_date)
fund_date <- as.Date(fund_date, format="%d-%m-%Y")
typeof(fund_date)
