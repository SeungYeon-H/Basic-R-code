library(tidyr)  
library(tidyverse)

bt<-read%>%pivot_longer(cols="병":"완",names_to="pottery",values_to="value") 
# or pivot_longer(c('병','완'), names_to = "pottery")  
bt<-subset(bt,select=c(1,4:5)) 
#picking out three columns, including 'pottery' and 'value'
