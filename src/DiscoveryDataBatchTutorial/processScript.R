#### Script for perform

### USER VALUES ###
args = commandArgs(trailingOnly=TRUE)

SampleID <-args[1]
p1 <-as.numeric(args[2])
p2 <-as.numeric(args[3])
p3 <- as.numeric(args[4])

x<-c(-10:10)
e<-2.718
y <- p1/(p2+p3*e^(-x))

write.table(file=paste0(SampleID,"__",p1,"_",p2,"_",p3,".tab"),
            x=data.frame(x=x,y=y),
            sep = "\t")