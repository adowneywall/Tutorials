#### Script for perform

### USER VALUES ###
args = commandArgs(trailingOnly=TRUE)

SampleID <-args[1]
p1 <-as.numeric(args[2])
p2 <-as.numeric(args[3])
p3 <- as.numeric(args[4])

x<-seq(from = 1,to = 100,by = 1)
y<-(p1*x)^p2 + p3

write.table(file=paste0(SampleID,"_",p1,"_",p2,"_",p3,".tab"),
            x=data.frame(x=x,y=y),
            sep = "\t")