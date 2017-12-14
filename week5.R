WR <- WorldRecords

mens800 <- WR[WR$Event=="Mens 800m",]
linFit(mens800$Year,mens800$Record)

table(WR$Event)

#Subset the data
menshot <- WR[WR$Event=='Mens Shotput',]
womenshot <- WR[WR$Event=='Womens Shotput',] 

#Create scatterplots
plot(menshot$Year,menshot$Record,main='Mens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
plot(womenshot$Year,womenshot$Record,main='Womens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)

#Run linear models
linFit(menshot$Year, menshot$Record)
linFit(womenshot$Year,womenshot$Record)

#Subset the data
menshot <- WR[WR$Event=='Mens Mile',]
womenshot <- WR[WR$Event=='Womens Mile',] 

#Create scatterplots
plot(menshot$Year,menshot$Record,main='Mens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
plot(womenshot$Year,womenshot$Record,main='Womens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)

#Run linear models
linFit(menshot$Year, menshot$Record)
linFit(womenshot$Year,womenshot$Record)

mensPV <- WR[WR$Event=="Mens Polevault" & WR$Year>=1970,]
mensPV

plot(mensPV$Year,mensPV$Record)
linFit(mensPV$Year,mensPV$Record)
