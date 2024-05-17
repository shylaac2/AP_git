setwd('~/Documents/tmpgit/')
data = read.csv('1.csv')
data$t=as.Date(data$t, origin="2020-03-01")
data_sub=subset(data, subset = t>="2020-07-01" & t<= "2020-12-31")
plot(data$t,data$H, type='l', col='RED', main='COVID Plot', 
     ylab='Hospital Beds', xlab='Dates')
