plot.new()

1.
x<-c(9,15,20,6)
pie(x,labels=c("영업1팀","영업2팀","영업3팀","영업4팀"),main="부서별 영업 실적")
pie(x,labels=c("영업1팀","영업2팀","영업3팀","영업4팀"),main="부서별 영업 실적",
	init.angle=90,col=rainbow(length(x)))

2.
x<-c(9,15,20,6)
barplot(x,name=c("영업1팀","영업2팀","영업3팀","영업4팀"),main="부서별 영업 실적")
barplot(x,name=c("영업1팀","영업2팀","영업3팀","영업4팀"),main="부서별 영업 실적",
	col=rainbow(length(x)))
barplot(x,name=c("영업1팀","영업2팀","영업3팀","영업4팀"),main="부서별 영업 실적",
	col=rainbow(length(x)),xlab="부서",ylab="영업실적(억원)",ylim=c(0,25))

3.
barplot(x,name=c("영업1팀","영업2팀","영업3팀","영업4팀"),las=1,main="부서별 영업 실적",
	col=rainbow(length(x)),ylab="부서",xlab="영업실적(억원)",
	xlim=c(0,25),horiz=TRUE,)

4.
plot(mpg$cty,mpg$hwy,xlab="cty",ylab="hwy")	#ggplot 패키지 사용하지 않았을 때

install.packages("ggplot2")
library(ggplot2)
ggplot(mpg,aes(x=cty,y=hwy)) + geom_point()

5.
ggplot(midwest,aes(x=poptotal,y=popasian)) + geom_point() + xlim(0,500000) + ylim(0,10000)
