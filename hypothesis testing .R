

install.packages('date')
library(lubridate)

input_data <- read.csv('Article popularity dataset.csv')

#seprating the dates
m <- regexpr('\\d{4}/\\d{2}/\\d{2}', input_data$URL, perl = TRUE)

#creating a new dates column
input_data$dates <- regmatches(input_data$URL,m)

#day of week separation 
input_data$day_of_week <- weekdays(as.Date(input_data$dates,'%Y/%m/%d'))

#function to extract weekends
weekend_flag <- function(day){
  if(day == 'Saturday' | day == 'Sunday'){
    out = 1
    }else {
     out = 0 
    }
  return(out)
}

input_data$isweekend <- lapply(input_data$day_of_week,weekend_flag)

data2 <- input_data

#subsets
weekend <- subset(input_data, isweekend == 1)
weekday <- subset(input_data, isweekend == 0)
socialmedia <- subset(input_data, data_channel_is_socmed == 1)
others <- subset(input_data, data_channel_is_socmed == 0)


#weekend vs weekdays
t.test(weekend$shares, weekday$shares, conf.level = 0.99)

#socmed vs other
t.test(subset(weekend, data_channel_is_socmed == 1)$shares, subset(weekend, data_channel_is_socmed == 0)$shares, conf.level = 0.99)
#or 
t.test(subset(socialmedia, isweekend == 1)$shares, subset(others, isweekend == 1)$shares)

#weekdays of socialmedia or others
t.test(subset(socialmedia, isweekend == 0)$shares, subset(others, isweekend == 0)$shares)

# socmed: weekend versus weekday
t.test(subset(weekday, data_channel_is_socmed == 1)$shares, subset(weekend, data_channel_is_socmed == 1)$shares, conf.level = 0.95)
#or 
t.test(subset(socialmedia, isweekend == 0)$shares,subset(socialmedia, isweekend == 1)$shares)

#no of shares socmed in weekends
sum(subset(socialmedia, isweekend == 1)$shares )
#weekdays
sum(subset(socialmedia, isweekend == 0)$shares )

#no of shares others in weekends
sum(subset(others, isweekend == 1)$shares )
#weekdays
sum(subset(others, isweekend == 0)$shares )

#totals
sum(socialmedia$shares)
sum(others$shares)
sum(subset(data2, isweekend == 1)$shares)
sum(subset(data2, isweekend == 0)$shares)

sum(data2$shares)
