## Creating Slurm sBatch scripts for Discovery

**Goal**
Create singleBatch and multiBatch scripts for running batch processing jobs using slurm on the discovery computer cluster.

[Folder with scripts and data used on Discovery cluster](https://github.com/adowneywall/Tutorials/tree/master/src/DiscoveryDataBatchTutorial)

Processing Script in R:
```{r}
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
```

**Running processing script as a singleBatch shell script with fixed parameters:**
```
#!/bin/bash
#SBATCH --partition=general
#SBATCH --reservation=nahant
#SBATCH --job-name=test
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --output=%j.output
#SBATCH --error=%j.error

## load the anaconda package:
module load lotterhos/2019-11-15

cd /home/downey-wall.a/DiscoveryDataBatchTutorial

sampleID="Model_1"
p1="1"
p2="1"
p3="1"

Rscript processScript.R $sampleID $p1 $p2 $p3
```

**Running processing script using a multiBatch approach that reads in a table of possible parameters:**
```
DIR <- "/home/downey-wall.a/DiscoveryDataBatchTutorial"
setwd(DIR)

df = read.table("input_parameters.tab",header = TRUE)

for(i in 1:nrow(df)){
  
  fileConn <- file(paste0(df[i,1],"_singleBatchRun.bash"))
  writeLines(c("#!/bin/bash",
               "#SBATCH --partition=general",
               "#SBATCH --reservation=nahant",
               paste0("#SBATCH --job-name=",df[i,1]),
               "#SBATCH -N 1",
               "#SBATCH -n 1",
               paste0("#SBATCH --output=",df[i,1],".output"),
               paste0("#SBATCH --error=",df[i,1],".error"),
               "module load lotterhos/2019-11-15",
               paste0("cd ",DIR),
               paste("Rscript processScript.R",df[i,1],df[i,2],df[i,3],df[i,4],sep=" ")),
             fileConn)
  close(fileConn)
  
  system(paste0("sbatch ",df[i,1],"_singleBatchRun.bash"))
}
```

**Table Input**
![](https://github.com/adowneywall/Tutorials/blob/master/img/slurmBatchTutorial_inputTable.png)

**Visualization of processing output**
![](https://github.com/adowneywall/Tutorials/blob/master/img/slurmBatchTutorial_multiBatchFigure.png)
