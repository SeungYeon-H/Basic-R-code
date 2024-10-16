#not using gsub
Change the 'Han River' element included in data$region, for those rows whose Site(Kor) column is "MC"
data$region[data$`Site(Kor)` == "MC" & data$region == "Han River"] <- "Mongchon"
 
