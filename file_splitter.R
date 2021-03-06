arguments <- commandArgs(TRUE)
input_file <- read.table(file=arguments[1],sep="\t",dec=".",header=FALSE)
setwd("/data")

file_splitter <- function(input_file)
{
  output_list <- c()
  for (i in 1: dim(input_file)[1])
  {
    write.table(input_file[i,],file=paste(i,input_file[i,1],sep="-"),col.names=FALSE,row.names=FALSE,quote=FALSE,sep="\t")
    output_list <- c(output_list,paste(i,input_file[i,1],sep="-"))
  }  
  write.table(output_list,file="output_list",col.names=FALSE,row.names=FALSE,quote=FALSE,sep="\t")
  #return(output_list)
}

res = file_splitter(input_file)
