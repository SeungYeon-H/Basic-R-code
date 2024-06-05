#change all column element (which is character) into numeric in dataframe

frame[] <- lapply(frame, function(x) {
 
  as.numeric(as.character(x))
})
