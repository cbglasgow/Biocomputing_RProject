## Intro to Biocomputing Final R Project: Supporting Functions
## Clayton Glasgow, Sidney Harris, and Jaden Bailey
## 14 December 2022

#Convert files from .txt to .csv

write.table(allData, append = FALSE, file = "allData.csv", sep=",", row.names=FALSE, col.names=FALSE)

txt_to_csv <- function(dir){
    files<-list.files(dir, pattern ="*.txt", full.names = TRUE, recursive = FALSE)
  
    for (file in files){
    read<-read.table(file, sep = "", header = FALSE)
    filename<-gsub(".txt", ".csv", file)
    write.table(read, file = filename, sep=",", row.names=FALSE, col.names=FALSE)
  }
}
