library(XML)
url<-"http://api.translink.ca/rttiapi/v1/buses?apikey='yourkey'"
busdata_xml<-xmlParse(url)
busdata<-xmlToDataFrame(busdata_xml)
write.table(busdata,file="busdata.csv",append=T,sep=",",col.names=F)