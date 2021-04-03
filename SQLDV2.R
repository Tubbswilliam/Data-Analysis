library(RMySQL)
options(scipen=999)
mysqlconnection = dbConnect(MySQL(),
                            user = 'mba542',
                            password = 'mba542',
                            dbname = 'mba542',
                            host = 'db.it.pointpark.edu')
print(dbListTables(mysqlconnection))

result = dbSendQuery(mysqlconnection, "select * from salaries where salary>60000")
data = fetch(result)
head(data)
hist(data$salary,main="Employees with salary >60000",col="green")

dbDisconnect(mysqlconnection)
