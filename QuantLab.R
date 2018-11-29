library(Quandl)
Quandl.api_key("bw7VekZwHuBqzmDygGtz")

vie <- Quandl('EURONEXT/VIE')
ild <- Quandl('EURONEXT/ILD')

# compute historical vol from time series of periodic prices
S <- c(1.3,1.2,1.3,1.4,1.5,1.4,1.3,1.4,1.5)
annualizedHistVol <- function(S){
  diffLogS <- diff(log(S))
  diffLogSmean <- mean(diffLogS)
  N <- length(diffLogS)
  histVol <- sqrt(1/(N-1)*sum((diffLogS - diffLogSmean)^2))
  annualized_histVol <- histVol*sqrt(length(S))
}


# compute log returns from a prices time series
logReturns <- function(S){
  logRets<- diff(log(S))
}

# compute prices from initial price and log returns
toPrices <- function(S1, SlogRets){
  Sprices <- c(S1,S1*exp(cumsum(SlogRets)))
}

