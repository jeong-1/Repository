plot.new()

1.
x<-c(9,15,20,6)
pie(x,labels=c("����1��","����2��","����3��","����4��"),main="�μ��� ���� ����")
pie(x,labels=c("����1��","����2��","����3��","����4��"),main="�μ��� ���� ����",
	init.angle=90,col=rainbow(length(x)))

2.
x<-c(9,15,20,6)
barplot(x,name=c("����1��","����2��","����3��","����4��"),main="�μ��� ���� ����")
barplot(x,name=c("����1��","����2��","����3��","����4��"),main="�μ��� ���� ����",
	col=rainbow(length(x)))
barplot(x,name=c("����1��","����2��","����3��","����4��"),main="�μ��� ���� ����",
	col=rainbow(length(x)),xlab="�μ�",ylab="��������(���)",ylim=c(0,25))

3.
barplot(x,name=c("����1��","����2��","����3��","����4��"),las=1,main="�μ��� ���� ����",
	col=rainbow(length(x)),ylab="�μ�",xlab="��������(���)",
	xlim=c(0,25),horiz=TRUE,)

4.
plot(mpg$cty,mpg$hwy,xlab="cty",ylab="hwy")	#ggplot ��Ű�� ������� �ʾ��� ��

install.packages("ggplot2")
library(ggplot2)
ggplot(mpg,aes(x=cty,y=hwy)) + geom_point()

5.
ggplot(midwest,aes(x=poptotal,y=popasian)) + geom_point() + xlim(0,500000) + ylim(0,10000)
