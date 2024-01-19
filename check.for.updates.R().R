### in case the error occurs and there needs an update : check the version of the R-----------------


library(ggplot2) # and sometime the error comes up like : 

#there is no package called 'lifecycle'
#Error : object ‘enexprs’ is not exported by 'namespace:rlang'
#ERROR: lazy loading failed for package ‘ggplot2’
#removing ‘/Library/Frameworks/R.framework/Versions/3.3/Resources/library/ggplot2’
#Warning in install.packages : installation of package 'ggplot2’ had non-zero exit status

​
### SOLUTION : updating the R version--------------------------------------
install.packages("installr")
library(installr)
check.for.updates.R() #the information of the version pops up 
install.R() #And make sure that the file path comes directly below C://.
