strwb<-read.csv("/Users/xinhuaijin/Desktop/assignments/strawberry/strwb_oct4.csv")
strwb_census<- strwb[strwb$Program == 'CENSUS',]
strwb_survey<- strwb[strwb$Program == 'SURVEY',]
any(is.na(strwb_census))
head(strwb_census)
vals<-strwb_census$Value
vals[1:20]
vals<-gsub(",","",vals)
vals<-gsub("(D)",NA,vals)
vals<-as.numeric(vals)