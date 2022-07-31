##그래프
##r에서 기본으로 제공하는 plot()함수와 ggplot2패키지를 이용하는 방법이 있다.



##plot():산점도 함수, 데이터분포를 한 눈에 보기 편리함 
#형식: plot(x,y,옵션), 옵션에는 main=그래프 제목, sub=그래프 부제목, xlab=x축제목, ylab=y축제목, type=plot의 형태, axes=plot의 테두리선, col=plot의 색상

#그래프 기본-1
age<-c(24,36,40,42,27,35,55,48)					#벡터
plot(age,main="나이분포",ylab="나이")					#함수 안에 데이터가 하나 밖에 없을 때-> y값으로 인식(x값은 그냥 1,2,3,...)

plot.new()									#화면 깨끗하게 만들기
age<-c(24,36,40,42,27,35,55,48)
plot(age,main="나이분포",ylab="나이",col="green")			#색상옵션 추가
plot(age,main="나이분포",ylab="나이",col="#FF0000")		#영문을 직접 써도 되지만 RGB코드값을 입력해도 됨

#그래프 기본-2
plot.new()
height<-c(165,170,177,167,180,172,169,179)
weight<-c(70,73,62,80,85,74,75,68)
plot(weight,height,main="키와 몸무게 분포",xlab="체중",ylab="키")

#실습
#1)cars데이터 불러오기
#2)산점도 그래프 그려보기
#3)제목과 x축제목, y축제목 넣어보기
cars
plot(cars$speed,cars$dist,main="cars데이터의 산점도")		#데이터 프레임 형태이므로 $기호를 이용해 x,y값을 써준다



#type=p 포인트가 점의 형태로 그려짐
#type=l 선의 형태
#type=o 점과 선이 중첩되며 통과됨
#type=h 히스토그램과 같이 수직선 형태
#type=s/S 계단형 그래프
#type=b 점과 선이 떨어져 있는 형태

plot.new()
height<-c(165,170,177,167,180,172,169,179)
weight<-c(70,73,62,80,85,74,75,68)
plot(weight,height,main="키와 몸무게 분포",type='o',
	xlab="체중",ylab="키",col=rainbow(length(height)))	#rainbow:무지개색, length(height):height의 개수만큼
plot(weight,height,main="키와 몸무게 분포",type='b',
	xlab="체중",ylab="키",col=rainbow(length(height)))



#그래프 기본-3
#par()함수: 여러 그래프를 한 화면에 그릴 때 유용
#par(mfrow=c(행의 개수, 열의 개수))
#par()뒤의 plot()에 각각 그래프의 선의 굵기와 종류, 문자의 크기와 글꼴, 색상지정 가능
ex) par(mfrow=c(2,3)) #2행 3열의 그래프, 한 화면에 6개의 그래프가 그려짐
+) 기본형태는 par(mfrow=c(1,1))

plot.new()
x<-1:5
y<-x
par(mfrow=c(2,3))
kind=c('p','b','l','o','s','h')
for(i in 1:length(kind)) {
title<-paste("type=",kind[i])
plot(x,y,type=kind[i],main=title,col=rainbow(6))
}



#points(): 그래프에 다양한 형태의 점을 추가(보조함수)
#points(x,y,pch=점의 형태를 번호로 표시,cex=점의 크기)
plot.new()
par(mfrow=c(1,1))								#그래프 사이즈 원래대로
plot(1:5,1:5,main="여러 형태의 점")
points(3,2,pch=2,cex=2)							#새로운 점 추가, pch: 점의 모양, cex: 점의 크기
points(2,pch=15,cex=3)							#데이터가 하나밖에 없으면 y값
points(2,4,pch=20,cex=1)

#lines(): 그래프에 다양한 형태의 선을 추가(보조함수)
#lines(x,lty=선의 타입,col=선색상,lwd=선 굵기)
plot.new()
plot(1:5,1:5,main="여러 형태의 선")
lines(c(1,3),c(3,3),lty="dotted",lwd=3,col="red")		#앞의 데이터는 전부 x값, 뒤이 데이터는 전부 y값
lines(c(1,3),c(4,4),lty="solid",lwd=2,col="green")		#(1,4)과 (3,4)을 잇는 선
lines(c(1,5),lty="dashed",lwd=4,col="blue")			#데이터가 하나밖에 없으면(c(1,5)) y좌표값, 여기서 1과 5는 각각의 y좌표 값이며 x에는 1과 2가 들어감
lines(c(1,5),c(1,5),lty="solid",lwd=4,col="red")		#(1,1)과 (5,5)를 잇는 선



#abline(): 그래프 안에 선 그리기, abline(h=3,lty="solid")		
#text(): 그래프 안에 텍스트 삽입, text(3,2,"하위 data군")		#(3,2)위치에 "하위 data군"이라고 써짐
#legend(): 범례삽입, legend(x,y,"위치",cex=글자크기,col=색상,lty=선종류)

#그래프 기본-4
plot.new()
x<-1:5
y<-x
plot(x,y,main="sample")
abline(h=c(1:3),col="green",lty="dotted")				#h는 가로선, v는 세로선
text(3,3,"기본점")

#그래프 기본-5	
plot.new()
height<-c(165,170,177,167,180,172,169,179)
weight<-c(70,73,62,80,85,74,75,68)
irum<-c('김','박','최','신','정','문','오','추')
plot(weight,height,main="키와 몸무게 분포",type='o',
	pch=18,xlab="체중",ylab="키",col=rainbow(length(height)))

abline(h=seq(165,180,5),col="gray",lty=2)				#165부터 180까지 5단위로 회색 가로선
text(73,174,"표준",col="brown")					#(73,174)좌표위치에 갈색으로 "표준"이라고 출력

legend("bottomright",col=rainbow(length(height)),		#오른쪽 아래에 각각 무지개 색 실선으로 irum의 값 출력
	legend=irum,lty=1)
legend("bottomright",col=rainbow(length(height)),		#윗 문장이랑 같은 의미
	irum,lty=1)



plot.new()
y1<-c(0.8,0.5,0.4,0.4,0.5,0.7)
y2<-c(0.8,1.3,1.0,1.3,0.9,1.2)
x<-c(1:6)

par(new=TRUE)								#par(new=TRUE)를 이용하여 원래의 그래프에 새로운 그래프가 중첩되도록 함
plot(x,y1,ylab="소비자물가상승률",type="o",col="red",
	ylim=c(0.3,1.5))							#ylim: y좌표의 단위값 조정(limit)

par(new=TRUE)
plot(x,y2,lty="dotted",ylab="소비자물가상승률",type="l",col="blue",
	ylim=c(0.3,1.5))

legend(locator(1),legend=c('2015년','2016년'),			#locator(1): 사용자가 클릭하는 위치에 범례를 만들어줌
	lty=1,bg="yellow",col=c('red','blue'))			#선 종류, 배경색, 범례의 선 색깔



#막대그래프 기본-1
#barplot(): 막대그래프
plot.new()
x<-c(100,200,300,350,500)
barplot(x,name=c('a','b','c','d','e'),col='yellow')

#막대그래프-응용1
data<-read.csv("c:\\r1\\seoulpopulation.csv",sep=",",		#sep: 구분자
	header=TRUE)
data
data1<-subset(data,남자>=230000)					#subset(): 데이터 필터링(dplyr설치 안하고 필터링)
data1
gu<-data1$자치구
barplot(data1$남자,name=gu,las=1,col="darkgreen",		#las=1: 막대그래프에서 세로줄 데이터명을 가로로 보여줌
	horiz=TRUE,main="서울 남성23만명 이상 거주 자치구")		#horiz=TRUE: 막대그래프를 가로로 만들어줌

#히스토그램(비교적 연속적)
#hist(): 히스토그램
plot.new()
x<-c(23,33,32,45,37,28,15,35,43,27,46,33,38,46,50,25)
hist(x,main="연령분포",xlim=c(15,50),col="pink")

#상자도표(데이터의 분포를 비교하거나 데이터의 분포에서 심하게 벗어난 극단의 데이터를 확인할 때, 서로 다른 범위를 비교할 때 사용)
#boxplot(): 상자도표
plot.new()
data<-read.csv("c:\\r1\\birthdie.csv",sep=",",header=TRUE)
data
boxplot(data$출생,data$사망,names=c('출생','사망'),		#데이터 하한가, 데이터 상한가, 데이터의 25%구간, 데이터의 75%구간, 중위수(중간값), 이상치(데이터의 전체분포에서 벗어난 값들)가 나옴
	col=c("pink","darkgreen"),
	main="서울2013-2014출생사망자 비교")

#원형그래프
#pie(): 원형그래프
x<-c(27,43,15)
pie(x,labels=c("한식","일식","중식"))					#pie에서는 name말고 labels 사용
pie(x,labels=c("한식","일식","중식"),
	init.angle=90,col=rainbow(length(x)))			#init.angle을 이용하여 시작각도를 90으로

#3차원 파이차트(패키지 설치 필요)
#pie3D(): 3차원 파이차트
install.packages("plotrix")
library(plotrix)

x<-c(9,15,20,6)
label<-c("영업1팀","영업2팀","영업3팀","영업4팀")			#explode: 떨어져 있는 정도, labelcex: 변수이름(글씨) 크기
pie3D(x,labels=label,explode=0.1,labelcex=0.8,main="부서별 영업실적")




##ggplot2는 그래프를 만들 때 가장 많이 사용하는 패키지
install.packages("ggplot2")
library(ggplot2)

#그래프 기본 틀-> ggplot(데이터세트,aes(데이터속성))
ggplot(mpg, aes(x = displ, y = hwy))
ggplot(mpg, aes(x = displ, y = hwy)) + 				#geom_point를 이용하여 산점도 배경에 산점도 추가
	geom_point()

ggplot(mpg, aes(x = displ, y = hwy)) + geom_point() + 	# x축 범위 3~6
  xlim(3, 6)		
ggplot(mpg, aes(x = displ, y = hwy)) + 				#  x축 범위 3~6, y축 범위 10~30
  geom_point() + 
  xlim(3, 6) + 								#ggplot2에서 lim을 사용할 때는 =기호 없이 사용
  ylim(10, 30)


str(airquality)
ggplot(airquality, aes(x = Day, y = Temp))

ggplot(airquality, aes(x = Day, y = Temp)) + 
	geom_point()

ggplot(airquality, aes(x = Day, y = Temp)) + 			#geom_point내부에서 size와 color을 이용하여 크기 3, 색상 빨강인 산점도 만들기
	geom_point(size=3,color="red")

ggplot(airquality, aes(x = Day, y = Temp)) + 			#geom_text()를 이용하여 산점도 차트에 텍스트 추가
	geom_point() + 
	geom_text(aes(label = Temp, vjust = 0, hjust = 0 ))	#vjust: 세로에서의 위치, hjust: 가로에서의 위치



##막대 그래프-집단 간 차이##
install.packages("dplyr")
library(dplyr)

#집단별 평균표만들기
df_mpg <- mpg %>% 
  group_by(drv) %>%							#구동방식별로 그룹으로 묶고
  summarise(mean_hwy = mean(hwy))					#고속도로 연비의 평균을 내기
df_mpg

ggplot(df_mpg, aes(x = drv, y = mean_hwy)) + geom_col()	#geom_col()을 이용하여 막대 그래프 생성
										#reorder()을 이용하여 크기 순으로 정렬하기
ggplot(df_mpg, aes(x = reorder(drv, -mean_hwy), 		#reorder(정렬할 변수 이름, 정렬기준(-기호가 붙으면 내림차순))
	y = mean_hwy)) + geom_col()

ggplot(mpg, aes(x = drv)) + geom_bar()				#geom_bar()을 사용하여 빈도 막대 그래프 만들기, 값의 개수를 막대 그래프로 표현(y축 없이 x축만 지정)

ggplot(mpg, aes(x = hwy)) + geom_bar()


#mtcars 데이터에서 실린더별 빈도수로 빈도 막대 그래프 만들기
ggplot(mtcars, aes(x = cyl)) + geom_bar()

ggplot(mtcars, aes(x = cyl)) + geom_bar(width=0.5)		#width를 사용하여 막대 그래프의 굵기 조정

ggplot(mtcars, aes(x = factor(cyl))) + geom_bar(width=0.5)	#실린더의 빈도수를 factor(팩터형)로 바꾸어 실제 존재하는 값만 나타내기


#실린더에 따른 빈도 막대 그래프
#그래프의 제목, 축제목 입력하기
ggplot(mtcars, aes(x = cyl)) + geom_bar() +
  labs(x = "기어수", y = "자동차수", title = "변속기 기어별 자동차수")		#labs로 이름 붙이기

#theme_을 사용해 그래프의 테마(배경)설정해보기
ggplot(mtcars, aes(x = cyl)) + geom_bar() +
  labs(x = "실린더수", y = "자동차수", title = "변속기 기어별 자동차수") +
  theme_bw()										#theme_gray가 기본



#누적 막대 그래프 만들기
#실린더 종류별 gear 빈도까지 파악하기
ggplot(mtcars, aes(x = factor(cyl))) + 
	geom_bar(aes(fill=factor(gear)))				#fill을 사용하여 막대그래프 안을 factor(gear)으로 채움

#coord_polar를 사용하여 누적 막대 그래프를 선버스트 차트로 변환
ggplot(mtcars, aes(x = factor(cyl))) + 
geom_bar(aes(fill=factor(gear))) +
coord_polar()

#coord_polar(theta="y")를 사용하여 선버스트 차트를 다시 원형으로 변환
ggplot(mtcars, aes(x = factor(cyl))) + 
geom_bar(aes(fill=factor(gear))) +
coord_polar(theta="y")



##선 그래프##
#시계열 그래프 만들기
#geom_line(): 꺾은 선 그래프 만들기
ggplot(economics, aes(x = date, y = unemploy)) + geom_line()

ggplot(airquality, aes(x = Day, y = Temp)) + geom_line()

ggplot(airquality, aes(x = Day, y = Temp)) + 
	geom_line(color="red") + geom_point(size=3,color="green")



##상자 도표 - 집단 간 분포 차이 표현##
#geom_boxplot()을 사용하여 상자도표 표현
ggplot(mpg, aes(x = drv, y = hwy)) + geom_boxplot()				#덩어리로 표현

ggplot(airquality, aes(x = Day, y = Temp, group= Day)) + geom_boxplot()	#그룹으로 나눠서 표현

#히스토그램 그리기
ggplot(airquality, aes(Temp)) + geom_histogram()

