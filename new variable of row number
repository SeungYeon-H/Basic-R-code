#inserting the new variable following the row number
c14dates$new_variable <- 1:nrow(c14dates #the new column name 'new_variable' containing 1, 2, 3, 4, ... n(row)

#rearranging this new variable to the first position of the variable
c14dates <- c14dates[, c("new_variable ", names(c14dates)[names(c14dates) != "new_variable "])] #rearranging the 'number' to the firsts column
c14dates<-c14dates[order(c14dates$new_variable ),] 
 
#originally putting new variables ,multiple ways 

#diviing the first variable by the second variable 
c14dates %>% 
  mutate(new_number = variable.1/variable.2) 
#or
c14dates[, "new_number"] <- c14dates[, 1] / c14dates[, 2]

# if I want to change the existing ones to the new one 
c14dates %>%
  transmute(
    variable.1= variable.1/variable.2,
    variable.2 = variable.1+variable.2
    ) #and the original variable.1 and variable.2 will disappear
