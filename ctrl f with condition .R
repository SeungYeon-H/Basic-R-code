### ctrl + F with multiple conditions 
#Change the 'Han River' element included in data$region, for those rows whose Site(Kor) column is "MC"
data$region[data$`Site(Kor)` == "MC" & data$region == "Han River"] <- "Mongchon" # not using gsub
#or
data$region <- with(data, gsub("Han River", "Mongchon", region, fixed = TRUE, 
                               ignore.case = FALSE)[`Site(Kor)` == "MC"]) #using gsub
 
#simply change "Han River into "Mongchon"
data$region <- gsub("Han River", "Mongchon", data$region)
