#change all column element into numeric

frame[] <- lapply(frame, function(x) {
 
  as.numeric(as.character(x))
})
