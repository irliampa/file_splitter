arguments <- commandArgs(TRUE)
input_file <- read.table(file=arguments[1],sep="\t",dec=".",header=FALSE)
setwd("/data")

file_splitter <- function(input_file)
{
  for (i in 1: dim(input_file)[1])
    write.table(input_file[i,],file=paste(i,input_file[i,1],sep="-"),col.names=FALSE,row.names=FALSE,quote=FALSE)
}

res = file_splitter(input_file)
