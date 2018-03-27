
#loading data

odi <- read.csv('odi-batting.csv', stringsAsFactors = F)

str(odi)

#converting date to date format

odi$MatchDate <- as.Date(odi$MatchDate , format = '%d-%m-%Y')
str(odi)

# extract derived year

odi$year <- format(odi$MatchDate, "%Y")

head(odi)

# Business Driven Metric: Centuries

odi$centuries <- ifelse(odi$Runs > 100, 1, 0)

#finding player with max centuries

max_hundred_player <- aggregate(centuries~Country+Player,odi,sum)

# ordering with hundreds

max_hundred_player <- max_hundred_player[order(max_hundred_player$centuries,decreasing = T),]


#odi fifties
# Name of the player scored maximum number of 50's in an odi career
odi$fifties <- ifelse(odi$Runs >=50 & odi$Runs< 100, 1, 0)

max_fifties_player <- aggregate(fifties~Player, odi, sum)

max_fifties_player <- max_fifties_player[order(max_fifties_player$fifties, decreasing = T),]

head(max_fifties_player)


# Business Driven Variable: Deriving Strike_rate  

odi$Strikerate <- round(odi$Runs/odi$Balls*100,2)


# How many centuries did the played scored who is top in the list of making highest centuries ?

max_hundred_player <- aggregate(centuries~Country+Player, odi, sum)


#subsetting

indian_player <- subset(odi, odi$Country == 'India')

century_year <- aggregate(centuries~year, indian_player, sum)
century_year <- aggregate(hundred~year,Indian_ply,sum)