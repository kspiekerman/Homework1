
bonds <- read.csv('Homework1_Bonds.csv')

#1 
table(bonds$Result)
bonds$Result <- factor(bonds$Result, labels=c('Cancelled', 'Carried','Defeated','NR'))
table(bonds$Gov_Type,bonds$Gov_Type[Gov_Type=='Cancelled'])
prop.table(table(bonds$Gov_Type,bonds$Result),2)

#2
Votes_Total <- (bonds$Votes_For + bonds$Votes_Against)
max(Votes_Total)
bonds[bonds$Votes_Total==1030414,]
Votes_Total <- (approved_ten$Votes_For + approved_ten$Votes_Against)

#3 
approved_ten <- bonds[bonds$Result=='Carried' & Votes_Total>10,]
votes_percent <- (approved_ten$Votes_For / (approved_ten$Votes_For+approved_ten$Votes_Against)*100)
summary(votes_percent)
hist(votes_percent,main='Percent of Votes For in Cleared Bonds with More Than 10 Votes',
xlab='Percent of Votes For',col='#31a35475',ylim=c(0,700),xlim=c(40,100))
margin <- (approved_ten$Votes_For-approved_ten$Votes_Against)

#4 
plot(approved_ten$margin,approved_ten$Amount, main='Margin of Win and Price', xlab='Price',
ylab='Margin of Win', pch=20, xlim=c(0,4000), ylim=c(29000,3500000000),col='turquoise3')
cor((votes_percent-(approved_ten$Votes_Against)),approved_ten$Amount)






