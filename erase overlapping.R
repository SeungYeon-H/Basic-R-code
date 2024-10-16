data <- data %>%
  distinct(`Site(Kor)`, `Provenience(Kor)`, .keep_all = TRUE) #erasing the overlapping rows which share the same elements in 'Site(Kor)' and Provenience(Kor)
