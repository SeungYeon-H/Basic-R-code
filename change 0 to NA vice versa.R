#single particle  
CA1$value[CA1$value==0]=NA

bt[,c(5,6,9:21)][is.na(bt[,c(5,6,9:21)])]<-0 #change designated columnes having NA to 0
