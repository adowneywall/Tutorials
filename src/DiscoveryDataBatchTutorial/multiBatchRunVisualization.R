## Visualization from Slurm batch run tutorial

setwd("/home/downeyam/Github/Tutorials/")
lf <- list.files("src/DiscoveryDataBatchTutorial/multiBatchOutput/",pattern = ".tab")

for(i in 1:length(lf)){
  model <- read.table(paste0("src/DiscoveryDataBatchTutorial/multiBatchOutput/",lf[i]),sep = "\t")
  if(i == 1){
    plot(model$y~model$x,ylim=c(0,1),type="l",col=i,lwd=2,
         xlab="Model Input",ylab="Model Output")
  }else{lines(model$y~model$x,col=i,lwd=2)}
}
legend(x=-9,y=0.9,legend=substr(lf,1,8),col=c(1:length(lf)),lwd=2,lty=1)
