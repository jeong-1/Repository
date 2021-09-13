#dplyr 데이터 전처리에 가장 많이 사용되는 패키지#
#filter(): 행추출
#select(): 열(변수)추출
#arrange(): 정렬(기본 오름차순 정렬)
#mutate(): 변수추가
#summarise(): 통계치 산출
#group_by(): 집단별로 나누기->엑셀의 부분합같은 작업 수행가능
#left_join(): 데이터 합치기(열)
#bind_rows(): 데이터 합치기(행)

> install.packages("dplyr")
> library(dplyr)
> setwd("c://r1")
> exam<-read.csv("csv_exam.csv")
> exam
   id class math english science
1   1     1   50      98      50
2   2     1   60      97      60

									#%>%:파이프연산자, 함수들을 연결하는 기능($연산자를 사용하는 것보다 문장이 간결해짐)#
> exam %>% filter(class==1)					#filter을 이용하여 1반인 학생들 추출(행)
> exam %>% filter(class==2)
> exam %>% filter(class!=1)					#1반인 학생을 제외하고 데이터 추출
> exam %>% filter(math>50) 
> exam %>% filter(english>=80)

> exam %>% filter(class==1 & math>=50)
  id class math english science
1  1     1   50      98      50
2  2     1   60      97      60
> exam %>% filter(class==2 & english>=80)
  id class math english science
1  5     2   25      80      65
2  6     2   50      89      98
3  7     2   80      90      45

> exam %>% filter(math>=90 | english>=90)
> exam %>% filter(english<90 | science<50)

> exam %>% filter(class==1 | class==3 | class==5)
> exam %>% filter(class %in% c(1,3,5))			#%in%: 매치연산자를 이용하여 or 조건 작성, 윗 문장과 결과 같음


> class1<-exam %>% filter(class==1)				#class1에 1반의 데이터 할당
> class2<-exam %>% filter(class==3)

> mean(class1$math)						#어떤 데이터 안의 열을 이용하기 때문에 $사용
[1] 46.25
> mean(class2$math)
[1] 45


##
> View(mpg2)
> a1<-mpg2 %>% filter(test=="pass")				#a1에는 mpg2에서 test가 pass인 행만 들어가 있음
> b1<-mpg2 %>% filter(test=="fail")				#b1에는 mpg2에서 test가 fail인 행만 들어가 있음
> View(a1)
> mean(a1$total)
[1] 23.88672
> View(b1)
> mean(b1$total)
[1] 15.63679
##



> exam %>% select(math)						#select를 이용하여 수학 점수만 추출(열)
   math
1    50
2    60
> exam %>% select(english)
   english
1       98
2       97
> exam %>% select(class,math,english)			#여러개의 열 한꺼번에 추출
   class math english
1      1   50      98
2      1   60      97
> exam %>% select(-math)					#-연산자를 사용하여 수학점수만 빼고 데이터추출
   id class english science
1   1     1      98      50
2   2     1      97      60
> exam %>% select(-math,-english)
   id class science
1   1     1      50
2   2     1      60


> exam %>% filter(class==1) %>% select(english)		#1반 학생들의 영어점수 추출
  english
1      98
2      97
3      86
4      98
> exam %>% select(id, math) %>% head			#id와 수학점수의 6개의 데이터만 추출
  id math
1  1   50
2  2   60
3  3   45
4  4   30
5  5   25
6  6   50
> exam %>% select(id, math) %>% head(10)
   id math
1   1   50
2   2   60
3   3   45
4   4   30
5   5   25
6   6   50
7   7   80
8   8   90
9   9   20
10 10   50



> exam %>% arrange(math)					#arrange를 이용하여 수학점수(수학열)를 기준으로 데이터 오름차순 정렬
   id class math english science
1   9     3   20      98      15
2   5     2   25      80      65
> exam %>% arrange(desc(math)) 				#desc를 사용하여 내림차순 정렬
   id class math english science
1   8     2   90      78      25
2  19     5   89      68      87
> exam %>% arrange(class, math)				#반별로 정렬 후, 수학점수로 정렬(오름차순)
   id class math english science
1   4     1   30      98      58
2   3     1   45      86      78
> exam %>% arrange(desc(math)) %>% head(5) 		#수학점수 정렬 후(내림차순), 앞에서 5개 데이터 추출
  id class math english science
1  8     2   90      78      25
2 19     5   89      68      87



##
> c1<-mpg2 %>% 							#파이프 연산자를 기준으로(파이프 연산자 뒤로) 끊어줌
+ filter(class=="suv") %>% arrange(desc(total))		#suv 행만 추출하여 total을 기준으로 내림차순 정렬
> View(c1)
##


									#mutate(데이터, 추가할 열 이름=조건 1, ...)#
> exam<-exam %>% 							#mutate를 이용해 수학,영어,과학열을 합산한 파생변수 total을 생성
+ mutate(total = math + english + science) %>% head
> exam
  id class math english science total
1  1     1   50      98      50   198
2  2     1   60      97      60   217
> View(exam)
> exam$total<-exam$math+exam$english+exam$science	#mutate가 아니라 $기호를 이용해서 파생변수 만들기
> exam %>% 								#여러 파생변수 한번에 추가하기
+ mutate(total=math+english+science, 
+ mean=(math+english+science)/3) %>% head
  id class math english science total     mean
1  1     1   50      98      50   198 66.00000
2  2     1   60      97      60   217 72.33333
> exam %>% 								#mutate()에 조건 적용하기
+ mutate(test=ifelse(science>=60,
+ "pass","fail")) %>% head
  id class math english science total test
1  1     1   50      98      50   198 fail
2  2     1   60      97      60   217 pass
> mutate(exam, 							#파이프 연산자를 이용하지 않고 데이터 변수의 이름(여기서는 exam)을 괄호 안에 작성해도 됨
+ total = math + english + science) %>% 
+ arrange(desc(total))
  id class math english science total
1  6     2   50      89      98   237
2  2     1   60      97      60   217
> head(mutate(exam, 						#파이프 연산자를 사용하지 않고 head구문 사용
+ total = math + english + science) %>% 
+ arrange(desc(total)))
  id class math english science total
1  6     2   50      89      98   237
2  2     1   60      97      60   217
> exam %>% 								#total열 추가한 후, 내림차순으로 정렬
+ mutate(total = math + english + science) %>% 
+ arrange(desc(total)) %>% head
  id class math english science total
1  6     2   50      89      98   237
2  2     1   60      97      60   217
> head(arrange(mutate(exam, 
+ total = math + english + science),total))
  id class math english science total
1  5     2   25      80      65   170
2  4     1   30      98      58   186


									#summarise(데이터변수 이름, 요약결과 저장하는 열=통계함수)#
> exam %>% summarise(mean_math=mean(math))		#1반부터 5반까지의 수학점수 평균
  mean_math
1  43.33333
> exam %>% summarise(mean(math))				#1반부터 5반까지의 수학점수 평균
  mean(math)
1   43.33333
> summarise(exam, mean(math))					#1반부터 5반까지의 수학점수 평균
  mean(math)
1   43.33333


									#group_by함수로 그룹별 요약, 단독으로 쓰이기보다는 다른 함수와 연계해서 사용#
> exam %>% group_by(class) %>% 				#반별로 그룹을 만들고 그룹별로 수학평균을 내줌
+ summarise(mean_math=mean(math)) 
`summarise()` ungrouping output (override with `.groups` argument)
# A tibble: 2 x 2
  class mean_math
  <int>     <dbl>
1     1      46.2
2     2      37.5

> exam %>% 								#여러 요약 통계량 한 번에 산출하기
+ group_by(class) %>%     					#반 별로 그룹짓기(분리)
+ summarise(mean_math=mean(math),
+ sum_math=sum(math),median_math=median(math),n=n()) 	#수학점수의 평균,합계,중앙값,학생수
									#n():빈도를 구하는 기능
`summarise()` ungrouping output (override with `.groups` argument)
# A tibble: 2 x 5
  class mean_math sum_math median_math     n
  <int>     <dbl>    <int>       <dbl> <int>
1     1      46.2      185        47.5     4
2     2      37.5       75        37.5     2



##
> x1 <-mpg %>%							#결과 x1에 할당
 group_by(manufacturer,drv) %>%     			#회사별, 구동 방식별로 그룹짓기(분리)
 summarise(mean_cty=mean(cty)) %>% head(10) 		#cty 평균 산출
View(mpg)
> x1
# A tibble: 10 x 3
# Groups:   manufacturer [5]
   manufacturer drv   mean_cty
   <chr>        <chr>    <dbl>
 1 audi         4         16.8
 2 audi         f         18.9
 3 chevrolet    4         12.5
 4 chevrolet    f         18.8
 5 chevrolet    r         14.1
 6 dodge        4         12  
 7 dodge        f         15.8
 8 ford         4         13.3
 9 ford         r         14.8
10 honda        f         24.4
##

##
#'회사별'로 "suv"자동차의 도시 및 고속도로 통합 연비 평균을 구해 내림차순으로 정렬하고, 1~5위까지 출력하기
mpg %>%										#잘못된 코드
filter(class=="suv") %>%
mutate(total=summarise(mean(cty+hwy))) %>%
head(5)

mpg %>% group_by(manufacturer) %>%						#옳은 코드
filter(class=="suv") %>% mutate(total=(cty+hwy)/2) %>%		#mutate를 이용하여 통합 연비 열을 만들고
summarise(mean_total=mean(total)) %>% 					#summarise를 이용하여 통합 연비 열의 평균을 구함
arrange(desc(mean_total)) %>% head(5)
##
