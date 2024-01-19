#erasing all the saved variables in the workspace
rm(list = ls())

#erasing the individual variable
rm(name of the variable)

#example
rm.test <-c(1,2,3)
rm(rm.test)
rm.test

#Error: object 'rm.test' not found
# you can enumerate the name of the variable in the rm() by ','.
