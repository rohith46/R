
remove_blank <- function(vector){
  vector[which(vector == "-"| vector == ""|vector == " ")]<- NA
  corrected_vector <- as.numeric(vector)
  
  return(corrected_vector)
}

df <- data.frame[c(1,2,3,4, 5,"",6,7)]

remove_blank(df$y)



remove_string <- function(vector){
    as.numeric(gsub("[*]","",vector))
}

vector <- c(21,34,"99*",56,"90*", "45*")
remove_string(vector)    


phone_vector <- c(99887766, 998877665521, 9897932453)
clean_vector <- phone_vector[phone_vector[!which(length(phone_vector) == 10)) = "NA"]

# Test - Passing a vector - c(99887766, 998877665521, 9897932453) to your function


print(clean_vector)


phone <- function(x){
  
  invalid <- which(nchar(as.character(x))!= 10)
  x[invalid] <- NA
  clean_vector <- x
  
  return(clean_vector)
}
phone(phone_vector)

remove_dup <- function(some_df){
  
  new_df <- some_df[-which(duplicated(some_df)), ]
  
  return(new_df)
}

remove_dup(d$y)
