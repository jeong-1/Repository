> list1<-list(c(1,2,3),"hello")						#리스트
> list1
[[1]]
[1] 1 2 3

[[2]]
[1] "hello"

> str(list1)									#str 함수: 변수 속성확인
List of 2										#두 가지로 구성된 데이터 리스트
 $ : num [1:3] 1 2 3
 $ : chr "hello"

> id<-c(1,2,3,4,5,6,7,8,9,10)
> sex<-c("F","M","F","M","M","F","F","F","M","F")
> age<-c(50,40,28,50,27,23,56,47,20,38)
> area<-c("서울","경기","제주","서울","서울","서울","경기","서울","인천","경기")
> data_ex<-data.frame(id,sex,age,area)					#데이터프레임
> data_ex
   id sex age area
1   1   F  50 서울
2   2   M  40 경기
3   3   F  28 제주
4   4   M  50 서울
5   5   M  27 서울
6   6   F  23 서울
7   7   F  56 경기
8   8   F  47 서울
9   9   M  20 인천
10 10   F  38 경기



											#if조건문#
> a<-8
> a
[1] 8
> if(a%%2==0){result<-"짝수"}							#if(2로 나눴을 때 나머지가 0이면){짝수 출력}
> result
[1] "짝수"

> a<-123
> if(a%%2==0){result<-"짝수"}else{result<-"홀수"}				
> result
[1] "홀수"

> a<-75
> if(a%%3==0 && a%%5==0){							#중괄호 시작부분을 기점으로 끊어줘야 오류없음
+ result<-"3의 배수이면서 5의 배수"}else if(a%%3==0){
+ result<-"3의 배수"}else if(a%%5==0){					#else if: 중첩 if문
+ result<-"5의 배수"}
> result
[1] "3의 배수이면서 5의 배수"

> a<-121
> if(a%%3==0 && a%%5==0){
+ result<-"3의 배수이면서 5의 배수"}else if(a%%3==0){
+ result<-"3의 배수"}else if(a%%5==0){
+ result<-"5의 배수"}else {
+ result<-"3의 배수, 5의 배수 어디에도 해당되지 않습니다."}
> result
[1] "3의 배수, 5의 배수 어디에도 해당되지 않습니다."


> a<-c(10,13,7,8,100)
> if(a%%2==0){result<-"짝수"}else{result<-"홀수"}				#if-> 변수가 여러개일 때 사용불가(하나일 때에만 계산 가능)-> 변수가 여러 개일 때는 ifelse 사용
경고메시지(들): 
In if (a%%2 == 0) { :
  length > 1 이라는 조건이 있고, 첫번째 요소만이 사용될 

											#ifelse: 변수의 값이 여러개일때 사용(excel의 if와 같다)#
> ifelse(a%%2==0,"짝수","홀수")							#ifelse(조건대상, 참일때 실행문장, 거짓일때 실행문장)
[1] "짝수" "홀수" "홀수" "짝수" "짝수"
> result<-c(ifelse(a%%2==0,"짝수","홀수"))					#결과값을 result에 대입
> df<-data.frame(값=a,결과=result)						#결과값을 가지고 데이터프레임을 만듦
> df
   값 결과
1  10 짝수
2  13 홀수
3   7 홀수
4   8 짝수
5 100 짝수

> a<-c(10,13,17,18,20)								#ifelse에서의 중첩-> ifelse(조건, 참일때, ifelse(조건, 참일때, 거짓일때))
> ifelse(a>mean(a),"평균초과",ifelse(a<mean(a),"평균미달","평균값"))	#mean(a):a 요소들의 평균
[1] "평균미달" "평균미달" "평균초과" "평균초과" "평균초과"			
> result<-c(ifelse(a>mean(a),"평균초과",ifelse(a<mean(a),"평균미달","평균값")))
> df2<-data.frame(a,result)
> df2
   a   result
1 10 평균미달
2 13 평균미달
3 17 평균초과
4 18 평균초과
5 20 평균초과


> a<-c(23,13,5,17,85)								#함수의 기능#
> mean(a)										#a의 평균
[1] 28.6
> sd(a)										#a의 표준편차
[1] 32.19938
> sort(a)										#오름차순으로 정렬
[1]  5 13 17 23 85
> sort(a,TRUE)									#내림차순으로 정렬(TRUE로 인해서)
[1] 85 23 17 13  5
> rev(a)										#a의 원래 데이터를 역순으로 출력
[1] 85 17  5 13 23

> a1<-c(2.34,3.1,4.3,2.98)
> b1<-c(2.4,3.09,4.3,3.1)
> cor(a1,b1)
[1] 0.9978118									#상관계수가 1에 가까움->두 변수는 상관관계에 있다



											#apply 계열함수#
> height<-c(177,180,167,165,170,NA)						#벡터형 정의
> weight<-c(NA,77.3,80,60,NA,64)
> df<-data.frame(신장=height,체중=weight)					#벡터를 데이터프레임으로 변환
> df
  신장 체중
1  177   NA
2  180 77.3
3  167 80.0
4  165 60.0
5  170   NA
6   NA 64.0
											#apply(대상객체, 행(1) 또는 열(2), 적용할 함수)
> apply(df,2,mean)								#열방향으로 평균내기
신장 체중 
  NA   NA 										#데이터 값 안의 NA 때문에 함수 적용안됨
> apply(df,2,mean,na.rm=TRUE)							#NA를 제거하고 함수 적용
   신장    체중 
171.800  70.325 

											#lapply계산결과 리스트 형태로 반환
> lapply(df,2,max,na.rm=TRUE)							#각 열에서의 최대값
$신장											
[1] 180

$체중
[1] 80

> sapply(df,max,na.rm=TRUE)							#계산결과 벡터 형태로 반환
신장 체중 
 180   80 
> df3<-sapply(df,max,na.rm=TRUE)
> is.vector(df3)									#df3이 벡터인지 확인
[1] TRUE

> d<-matrix(1:9, ncol=3)
> d
     [,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9
> apply(d,1,sum)									#행 방향으로 구한 합
[1] 12 15 18
> apply(d,2,sum)									#열 방향으로 구한 합
[1]  6 15 24



> iris										#r에 기본으로 내장된 데이터
    Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
1            5.1         3.5          1.4         0.2     setosa
2            4.9         3.0          1.4         0.2     setosa
> View(iris)									#표 형태로 확인
> View(cars)

> head(iris)									#앞에서부터 6개의 행(기본) 출력
> head(iris,10)									#앞에서부터 10개의 행 출력
> tail(iris,10)									#뒤에서부터 6개의 행 출력
> dim(iris)										#데이터가 몇 행, 몇 열인지
[1] 150   5
> str(iris)										#데이터의 속성 확인
'data.frame':   150 obs. of  5 variables:					#데이터형, 행수, 열수
 $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
 $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
> summary(iris)									#기초요약통계량
  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   	#최소, 최대, 중간값 등등
 Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100 


> apply(iris[, 1:4],2,sum)							#열방향 합계-> 행은 전부포함, 열은 1:4열까지만
Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
       876.5        458.6        563.7        179.9 
> colSums(iris[, 1:4])								#열방향 합계
Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
       876.5        458.6        563.7        179.9 
> colMeans(iris[, 1:4])								#열방향 평균
Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
    5.843333     3.057333     3.758000     1.199333 


> dflist<-read.table("c:\\r1\\passlist.txt",head=TRUE)		#head=TRUE: 첫 행은 머릿글임을 표현
> dflist
   나이 성별 평점
1    33   남 4.30
2    28   남 4.20
											#tapply(벡터, 인덱스, 사용할 함수): 데이터를 그룹으로 묶은 뒤, 함수를 적용#
> tapply(dflist$평점,dflist$성별,mean)					#성별을 그룹으로 묶어서 평점의 평균내기
      남       여 
4.181429 4.163846 					
> tapply(dflist$나이,dflist$성별,mean)					#성별을 그룹으로 묶어서 나이의 평균내기
      남       여 
31.28571 31.15385 

> a<-tapply(dflist$나이,dflist$성별,mean,simplify=FALSE)		#simplify=FALSE: 결과를 리스트 형태로 반환
> a
 [1] 1 1 2 2 1 2 2 1 2 2 2 1 2 2 1 2 2 1 2 2



> install.packages("readxl")							#엑셀파일을 불러오려면 readxl 패키지를 사용해야함
> library(readxl)

> setwd("c:\\r1")									#이 위치에 있는 파일 불러옴
> df_sb<-read_excel("subway.xlsx")						#subway.xlsx 엑셀파일 읽어들임
> df_sb
# A tibble: 119 x 7
   `구 분` 역명         `1월`   `2월`   `3월`     총계 일평균
   <chr>   <chr>        <dbl>   <dbl>   <dbl>    <dbl>  <dbl>
 1 1호선   서울역(1)  4126245 3661950 4145729 11933924 1325
> View(df_sb)
> names(df_sb)<-c("구분","역이름","1월","2월","3월","사용인원",		#names를 이용하여 변수명을 변경
+ "일평균인원")
> View(df_sb)


> df_exam<-read_excel("excel_exam.xlsx") 					#read_excel 명령어-> 알아서 첫번째 행을 필드명으로 인식, 두번째 행부터 불러옴
> df_exam
# A tibble: 20 x 5
      id class  math english science
   <dbl> <dbl> <dbl>   <dbl>   <dbl>
 1     1     1    50      98      50
 2     2     1    60      97      60
> View(df_exam)

> df_exam2<-read_excel("excel_exam.xlsx",sheet=3)			#sheet바꾸기(기본은 1)
> df_exam2
# A tibble: 20 x 3
    나이 성별   평점
   <dbl> <chr> <dbl>
 1    33 남     4.3 


											#csv파일 (엑셀과 다르게) 별도의 패키지 설치 필요X#
> df_exam3<-read.csv("csv_exam.csv")					#text파일(메모장)->read.table
> df_exam3										#csv파일->read.csv
   id class math english science						#excel파일->read_excel
1   1     1   50      98      50
> View(df_exam3)


> data<-read.csv('seoulpopulation.csv',header=TRUE)			#header=TRUE-> 첫번째 행을 필드명이다(안써줘도됨)
> data
     자치구   남자   여자
1    종로구  80531  83291
2      중구  66755  67574
> data$자치구										#자치구 열의 값들 불러오기
 [1] "종로구"   "중구"     "용산구"   "성동구"   "광진구"   "동대문구"	#팩터형(Levels)으로 나옴
 [7] "중랑구"   "성북구"   "강북구"   "도봉구"   "노원구"   "은평구"
> data<-read.csv('seoulpopulation.csv',header=TRUE,			#stringsAsFactors=FALSE-> 데이터의 문자형이 팩터 형식으로 나오지 않게 해줌
+ stringsAsFactors=FALSE)
> data
     자치구   남자   여자
1    종로구  80531  83291
2      중구  66755  67574


> df_midterm<-data.frame(english=c(90,80,60,70),
+ math=c(50,60,100,20),
+ class=c(1,1,2,2))
> df_midterm
  english math class
1      90   50     1
2      80   60     1
3      60  100     2
4      70   20     2

write.csv(df_midterm, file="df_midterm.csv")				#R에서 작성한 데이터를 csv파일로 저장