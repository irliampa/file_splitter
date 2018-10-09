file_splitter <- function(input_file)
{
  temp <- read.table(file=input_file,sep="\t",header=FALSE)
  setwd("/home/data")
  for (i in 1: dim(temp)[1])
    write.table(temp[i,],file=paste(i,temp[i,1],sep="-"),col.names=FALSE,row.names=FALSE,quote=FALSE)
}
