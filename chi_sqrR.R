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
#Chi-square test
X2 <- chisq.test(tbl, correct = FALSE)
X2$expected

#Constructing the confidence interval
prop.test(table(data$time,data$pctremember),correct = FALSE, conf.level = 0.95)
