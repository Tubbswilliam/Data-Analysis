#uniform distribution
uniform_data=runif(100000,0,10)
plot(density(uniform_data))

#Key symbols to use r,p,q and d

punif(q=2.5,min=0,max=10)

#q will give the cut off value of a certain probability
qunif(p=0.4,min=0,max=10)

#d gives the density 
dunif(0,min=0,max=10)

#Setting the seed will help us to recompute the same random
#numbers over and over again.
set.seed(12)