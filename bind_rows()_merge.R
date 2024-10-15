welfare<-left_join(welfare,list_job,id="cod_job") #merging the common thing in welfare and list_job, and the criteria is cod-job
welfare%>%filter(!.is.na(cod_job))%>%select(code_job,job)%>%head(10)
#in the welfare, without the NA of cod_job, and selecting the 'job'variable in code_job. Indicate only 10 rows.

#bind_rows()
The sharing/not sharing dataframe can be merged. Even though there are no common variables, they can be indicated with NA
