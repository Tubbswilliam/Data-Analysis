#Import the data and creating the table of counts
data<-read.csv(file.choose())
head(data)
tbl <- table(data$pctremember,data$time)
tbl 
##################################################
#Proportion table
prop_tbl <- prop.table(tbl, 2)
prop_tbl
##################################################
