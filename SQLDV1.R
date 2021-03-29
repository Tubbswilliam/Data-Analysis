library(RMySQL)
options(scipen=999)
mysqlconnection = dbConnect(MySQL(),
                            user = 'mba542',
                            password = 'mba542',
                            dbname = 'mba542',
                            host = 'db.it.pointpark.edu')
print(dbListTables(mysqlconnection))

result = dbSendQuery(mysqlconnection, "select * from salaries")
data.frame = fetch(result)
head(data.frame)
boxplot(data.frame$salary, ylab="Salary",main = "Boxplot of Salary")
summary(data.frame$salary)

dbDisconnect(mysqlconnection)
