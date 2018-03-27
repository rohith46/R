"""
Date conversion function 
dateconversion <- function(x)
{
  dmy <- as.POSIXlt(x, format = '%d-%M-%Y %H:%M')
  mdy <- as.POSIXlt(x, format = '%d/%M/%y %H:%M')
  
  dmy[is.na(dmy)] <- mdy[!is.na(mdy)]
  
  x <- dmy 
}
sum(is.na(uberdata$Request.timestamp))
uberdata$Request.timestamp <- dateconversion(uberdata$Request.timestamp)
str(uberdata)
sum(is.na(uberdata$Request.timestamp))

sum(is.na(uberdata$Drop.timestamp))

uberdata$
uberdata$Drop.timestamp[which(!is.na(uberdata$Drop.timestamp))] <- 
dateconversion(uberdata$Drop.timestamp[which(!is.na(uberdata$Drop.timestamp))])

sum(is.na(uberdata$Drop.timestamp)) """