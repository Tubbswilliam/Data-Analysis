library(RMySQL)
library(ggplot2)
options(scipen=999)
mysqlconnection = dbConnect(MySQL(),
                            user = 'mba542',
                            password = 'mba542',
                            dbname = 'mba542',
                            host = 'db.it.pointpark.edu')
print(dbListTables(mysqlconnection))

result = dbSendQuery(mysqlconnection, "select * from salaries where salary>115000")
data = fetch(result)
head(data)
ggplot(data=data, aes(x=emp_no, y=salary, group=1)) +
  geom_line(color="red")+
  geom_point()

dbDisconnect(mysqlconnection)