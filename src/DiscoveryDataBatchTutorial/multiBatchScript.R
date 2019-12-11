
DIR <- "/home/downey-wall.a/Discovery_Data_Challenge"
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
               paster("#SBATCH --error=",df[i,1],".error"),
               "module load lotterhos/2019-11-15",
               paste0("cd ",DIR),
               paste("Rscript processScript.R",df[i,1],df[i,2],df[i,3],df[i,4],sep=" ")),
             fileConn)
  close(fileConn)
  
  system(paste0("sbatch ",df[i,1],"_singleBatchRun.bash"))
}
