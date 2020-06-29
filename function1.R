pollutantmean<-function(directory,pollutant,id=1:332){
filenames<-list.files("G:\\Coursera R\\specdata","*.csv")
vals<-vector()
for(i in id){
filename<-sprintf("%03d.csv",i)
filepath<-paste("G:\\Coursera R\\specdata",filename,sep="/")
data<-read.csv(filepath)
d<-data[,pollutant]
d<-d[!is.na(d)]
vals<-c(vals,d)
}
round(mean(vals),3)
}
