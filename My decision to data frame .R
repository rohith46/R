getwd()

bank <- read.csv("bank.csv")

for (i in 1:nrow(bank))
{ 
    person <- bank[i,]
    person
  
    if (person$marital == "married")
     {
        if (person$housing == "yes" | (!is.na(person$salary) & person$salary) > 60000)
         {
           bank[i,"my_decision"] <- "yes"
         }
        else
         {
           bank[i,"my_decision"]<- "no"
         }
     }else if (person$marital == "single")
       {
        if (person$education == "teritiary" & !is.na(person$salary) & person$salary > 40000)
         {
          bank[i,"my_decision"] <- "yes"
         } 
        else
         {
          bank[i,"my_decision"]<- "no"
         }
       }
}