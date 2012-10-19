#monte carlo approximation for the value of pi
trials <- 100000
x <- runif (trials,0,1)
y <- runif (trials,0,1)
m <- (c(x^2+y^2<=1))
print(4*sum(m==TRUE)/trials)