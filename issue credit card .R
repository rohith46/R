person <- bank[1,]
person
if (person$marital == "married")
{
  if(person$housing == "yes" | person$salary > 60000)
  {
    print("Issue a credit card")
  }else{
    print("Not eligible for credit card")
  }
} else if (person$marital == "single") 
{
  if (person$education == "tertiary" & person$salary > 40000)
  {
    print("Issue a credit card")
  }else{
    print("Not eligible for credit card")
  }
}