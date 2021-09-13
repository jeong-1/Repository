> install.packages("dplyr")
> library(dplyr)
> mpg
> ls(mpg)								#mpg의 변수명 모두 출력
> mpg <-rename(mpg, city=cty, highway=hwy)		#rename()함수를 사용하여 데이터 일부분의 변수명 변경(데이터명, 바꿀변수명=원래변수명)


#left_join(): 데이터 합치기(열)
#bind_rows(): 데이터 합치기(행)

> test1<-data.frame(id=c(1,2,3,4,5),midterm=c(60,80,70,90,85))
> test1
  id midterm
1  1      60
2  2      80
3  3      70
4  4      90
5  5      85
> test2<-data.frame(id=c(1,2,3,4,5),final=c(70,83,65,95,80))
> test2
  id final
1  1    70
2  2    83
3  3    65
4  4    95
5  5    80
									#left_join(열추가)#
> total<-left_join(test1,test2,by="id")			#id를 기준으로 test1과 test2의 열 데이터를 합쳐 total에 할당
> total
id midterm final
1  1      60    70
2  2      80    83
3  3      70    65
4  4      90    95
5  5      85    80


> exam<-read.csv("csv_exam.csv")
> exam
   id class math english science
1   1     1   50      98      50
2   2     1   60      97      60
3   3     1   45      86      78
> name<-data.frame(class=c(1,2,3,4,5),			#새로운 dataframe만들기
+ teacher=c("kim","lee","park","choi","jung"))
> name
  class teacher
1     1     kim
2     2     lee
3     3    park
4     4    choi
5     5    jung
> exam_new<-left_join(exam,name,by="class")		#class를 기준으로 exam과 name의 열 함치기
> exam_new
   id class math english science teacher
1   1     1   50      98      50     kim
2   2     1   60      97      60     kim
3   3     1   45      86      78     kim



> group_a<-data.frame(id=c(1,2,3,4,5),test=c(60,80,70,90,85))
> group_b<-data.frame(id=c(6,7,8,9,10),test=c(70,83,65,95,80))
> group_a
  id test
1  1   60
2  2   80
3  3   70
4  4   90
5  5   85
> group_b
  id test
1  6   70
2  7   83
3  8   65
4  9   95
5 10   80

> group_all<-bind_rows(group_a,group_b)				#bind_row(행추가)#
> group_all									#group_b의 데이터가 group_a의 밑 부분 행으로 추가됨
   id test
1   1   60
2   2   80
3   3   70
4   4   90
5   5   85
6   6   70
7   7   83
8   8   65
9   9   95
10 10   80




##데이터 정제
##결측치 정제하기
#결측치는(missing value)는 누락된 값, 비어 있는 값을 의미한다.
#결측치가 있으면 함수가 적용되지 않거나 분석 결과가 왜곡되는 문제가 발생한다.
#실제 데이터에는 결측치가 있는지 확인해 제거하는 과정을 거친 후 분석해야 한다.
										#결측치 정제하기->(1)filter사용,(2)na.omit()사용,(3)na.rm=TRUE사용#
										#결측치는(missing value)는 누락된 값, 비어 있는 값을 의미(NA)
> df<-data.frame(sex=c("M","F",NA,"M","F"),
+ score=c(5,4,3,4,NA))
> df
   sex score
1    M     5
2    F     4
3 <NA>     3
4    M     4
5    F    NA
> is.na(df)									#결측치 확인하기
       sex score								#is.na()가 TRUE=결측치, FALSE는 결측치X
[1,] FALSE FALSE
[2,] FALSE FALSE
[3,]  TRUE FALSE
[4,] FALSE FALSE
[5,] FALSE  TRUE
> table(is.na(df))							#결측치 빈도 확인
FALSE  TRUE 
    8     2 
> table(is.na(df$sex))							#각각 열(성별,성적)의 결측치 확인
FALSE  TRUE 
    4     1 
> table(is.na(df$score))
FALSE  TRUE 
    4     1 
> sum(df$score)								#결측치 때문에 결과값이 나오지 않음
[1] NA
> mean(df$score)
[1] NA

> df %>% filter(is.na(score)) 					#score에서 NA인 데이터만 출력
  sex score
1   F    NA
> df %>% filter(!is.na(score)) 					#score에서 NA가 아닌 데이터만 출력, score 결측치(NA) 제거
   sex score
1    M     5
2    F     4
3 <NA>     3
4    M     4
> df_nomiss<-df %>% filter(!is.na(score))				#score에서 NA가 아닌 데이터만 df_nomiss에 할당
> mean(df_nomiss$score)							#결측치를 제외한 score열의 평균
[1] 4

> df_nomiss<-df %>% filter(!is.na(score) & !is.na(sex))	#&연산자를 이용하여 score열과 sex열에서 결측치 제거
> df_nomiss
  sex score
1   M     5
2   F     4
3   M     4
										#결측치가 하나라도 있으면 제거하기#
										#na.omit()를 이용하면 변수를 지정하지 않고 결측치가 한번에 제거됨
> df_nomiss2<-na.omit(df)
> df_nomiss2
  sex score
1   M     5
2   F     4
4   M     4

										#함수의 결측치 제외 기능 사용하기
> df
   sex score
1    M     5
2    F     4
3 <NA>     3
4    M     4
5    F    NA
> mean(df$score,na.rm=TRUE)
[1] 4



> exam<-read.csv("csv_exam.csv")
> exam[c(3,8,15),"math"]<-NA						#math열의 3,8,15 행에 NA를 넣기
> exam
   id class math english science
1   1     1   50      98      50
2   2     1   60      97      60
3   3     1   NA      86      78
4   4     1   30      98      58
5   5     2   25      80      65
6   6     2   50      89      98
7   7     2   80      90      45
8   8     2   NA      78      25
9   9     3   20      98      15
10 10     3   50      98      45
11 11     3   65      65      65
12 12     3   45      85      32
13 13     4   46      98      65
14 14     4   48      87      12
15 15     4   NA      56      78
> exam %>% summarise(mean_math=mean(math))			#math열의 평균을 mean_math에 넣기
 mean_math									#결측값 때문에 함수 적용이 안됨
1        NA
> exam %>% summarise(mean_math=mean(math,na.rm=TRUE))
  mean_math
1  55.23529
> exam %>% summarise(mean_math=mean(math,na.rm=T),		#평균,합계,중앙값 산출
+ sum_math=sum(math,na.rm=T),
+ median_math=median(math,na.rm=T)) 				
  mean_math sum_math median_math
1  55.23529      939          50

										#결측치 대체하기, 평균값으로 결측치 대체하기
> mean(exam$math,na.rm=T)						#math열의 평균값
  mean_math
1  55.23529
> exam$math<-ifelse(is.na(exam$math),55,exam$math)		#is.na()가 TRUE일때(결측값이 존재할 때),결측값 NA를 평균값 55로 바꿔줌(아니면 그냥 원래의 값)
> exam
   id class math english science
1   1     1   50      98      50
2   2     1   60      97      60
3   3     1   55      86      78
4   4     1   30      98      58
5   5     2   25      80      65
6   6     2   50      89      98
7   7     2   80      90      45
8   8     2   55      78      25
9   9     3   20      98      15
10 10     3   50      98      45
11 11     3   65      65      65
12 12     3   45      85      32
13 13     4   46      98      65
14 14     4   48      87      12
15 15     4   55      56      78
> table(is.na(exam$math))						#결측치가 하나도 없음
FALSE 
   20 



#이상치 정제하기
#정상범주에서 크게 벗어난 값을 '이상치(outlier)'라고 한다. 이상치가 데이터에 포함되어 있으면 결과가 왜곡되기 때문에 이상치를 제거해야 한다.
										#이상치(정상범주에서 크게 벗어난 값) 정제하기#
> outlier<-data.frame(sex=c(1,2,1,3,2,1),				#성별 3과 성적 6이 이상치라고 가정
+ score=c(5,4,3,4,2,6))
> outlier
  sex score
1   1     5
2   2     4
3   1     3
4   3     4
5   2     2
6   1     6
> table(outlier$sex)
1 2 3 
3 2 1 
> table(outlier$score)
2 3 4 5 6 
1 1 2 1 1 

> outlier$sex<-ifelse(outlier$sex==3,NA,outlier$sex)		#성별열에 적힌 3을 NA(결측치)로 바꾸기
> outlier
  sex score
1   1     5
2   2     4
3   1     3
4  NA     4
5   2     2
6   1     6
> outlier$score<-ifelse(outlier$score>5,NA,outlier$score)	#성적열에서 5보다 큰 값은 NA(결측치)로 바꾸기
> outlier
  sex score
1   1     5
2   2     4
3   1     3
4  NA     4
5   2     2
6   1    NA
> outlier %>% filter(!is.na(sex) & !is.na(score)) %>% 	#NA를 제외한 데이터를 성별으로 묶어서 성적 평균내기
+             group_by(sex) %>% 
+             summarise(mean_score=mean(score))
`summarise()` ungrouping output (override with `.groups` argument)
# A tibble: 2 x 2
    sex mean_score
  <dbl>      <dbl>
1     1          4
2     2          3
