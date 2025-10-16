rowid_to_column("a")  #function that gives a serial number from 1 to the left of the original column (the new column name is a).

#other pathways:
data[ , "id" ] <- 1:nrow(data) 

#other pathways:
sample<-bind_cols(sample1,sample2) %>%   mutate(row=row_number())
