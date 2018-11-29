#Setting working, output and input directories
basedir <- "C:/Users/GV4721/Documents/perso/R"
subdir <- "FinAnalytics"
inputdir <- paste(basedir,subdir,"input",sep="/")
outputdir <- paste(basedir,subdir,"output",sep="/")
setwd(paste(basedir,subdir,sep="/"))

#Setting display precision
options(digits=2)

f <- function(x){
  if(x>=0 & x<=1){
    (2*x)
  } else {
    0
  }
}