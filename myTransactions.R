library(arules)
#Sparse matrix
XXtransactions<-read.transactions(file.choose())

#Summary
summary(XXtransactions)


#item frequency plot of the top 10 most frequently appearing items
itemFrequency(XXtransactions[1,1:6])
#making a graph
dev.off()
itemFrequencyPlot(XXtransactions,supoort=0.1)

###############Rules
xxrules<-apriori(XXtransactions, parameter = list(supp = 0.2, conf = 0.8, target = "rules"))
summary(xxrules)
###inspecting the rules
inspect(xxrules)
