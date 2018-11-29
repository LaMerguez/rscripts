nA <- 5 # number of assets
nT <- 100 # number of obs
rho <- 0.95  # correlation between two assets

## create uncorrelated observations
X <- rnorm(nA * nT) 
#* 0.05
dim(X) <- c(nT, nA)

## check
pairs(X, col = grey(0.4)); cor(X)

## set correlation matrix
M <- array(rho, dim = c(nA, nA))
diag(M) <- 1

## compute cholesky factor
cF <- chol(M)

## induce correlation, check
Y <- X %*% cF
pairs(Y, col = grey(0.4)); cor(Y)