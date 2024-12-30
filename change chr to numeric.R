#change all column element (which is character) into numeric in dataframe

frame[] <- lapply(frame, function(x) {
 
  as.numeric(as.character(x))
})

# but if the former does not work...
bt <- bt %>% mutate(across(c(5,6,9:21), as.numeric)) 
