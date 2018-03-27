credit_card_decision <- function(p)
{
  if (p$marital == "married")
  {
    if (p$housing == "yes" | (!is.na(p$salary) & p$salary) > 60000)
    {
      decision <- "yes"
      }
    else
    {
      decision <- "no"
      }
    }else if (p$marital == "single")
     {
      if (p$education == "teritiary" & !is.na(p$salary) & p$salary > 40000)
       {
        decision <- "yes"
        }
      else
      {
         decision <- "no"
        }
    }else 
    {
      decision <- "no"
    }
return(decision)
}

for (i in nrow(bank))
{ 
  person <- bank[i,]
  bank[i,"my_decision"] <- credit_card_decision(person)
  }