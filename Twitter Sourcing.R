# Twitter data collection
install.packages('twitteR')
require('twitteR')

#Connect with Twitter API

consumer_key    = '#########'
consumer_secret = '#########'
access_token    = '#########'
access_secret   = '#########'
download.file(url="https://curl.haxx.se/ca/cacert.pem",destfile="cacert.pem")
setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)
search.string = "trump"
data= searchTwitter(search.string,lang="en",resultType="recent",n=150)

#Converting collected data to data frame for easy readability
data <- do.call("rbind", lapply(data, as.data.frame))
View(data)


