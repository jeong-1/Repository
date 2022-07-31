#데이터 파악에 사용되는 함수들#
#head(): 데이터 앞부분 출력(기본 6개)
#tail(): 데이터 뒷부분 출력(기본 6개)
#View(): 뷰어창에서 데이터 확인
#dim(): 데이터 차원 출력
#str(): 데이터 속성 출력
#summary(): 요약 통계량 출력
#ls(): 변수 항목(변수명)을 리스트로 출력

> install.packages("ggplot2")
> library(ggplot2)
> mpg									#mpg:ggplot2에 내장되어있음
> str(mpg)								#mpg 속성확인
tibble [234 x 11] (S3: tbl_df/tbl/data.frame)
 $ manufacturer: chr [1:234] "audi" "audi" ...	
						
> mpg<-as.data.frame(ggplot2::mpg)				#ggplot2의 mpg 데이터를 데이터프레임 형태로 불러오기
> str(mpg)
'data.frame':   234 obs. of  11 variables:
 $ manufacturer: chr  "audi" "audi" "audi" ...		#mpg의 데이터타입이 dataframe으로 바뀜
> View(mpg)


> df<-data.frame(var1=c(4,3,8),var2=c(2,6,1))		#dataframe생성
> df
  var1 var2
1    4    2
2    3    6
3    8    1
> df$var_sum<-df$var1+df$var2					#파생변수(var_sum)를 만들어 df에 추가->데이터프레임명에 $를 붙여 새로운 변수명을 입력
> df									
  var1 var2 var_sum						#데이터프레임에 새로운 열을 만드는 작업->파생변수를 만든다
1    4    2       6
2    3    6       9
3    8    1       9

> df$var_mean<-(df$var1+df$var2)/2
> df
  var1 var2 var_sum var_mean
1    4    2       6      3.0
2    3    6       9      4.5
3    8    1       9      4.5



> mpg2<-as.data.frame(ggplot2::mpg)
> mpg2

> mpg2$total<-(mpg2$cty+mpg2$hwy)/2				#total(총연비):도시연비와 고속도로연비의 평균
> head(mpg2)
> mean(mpg2$total)						#총연비들의 평균
[1] 20.14957
> summary(mpg2$total)						#총연비들의 요약
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  10.50   15.50   20.50   20.15   23.50   39.50 
> hist(mpg2$total)						#hist를 이용해 히스토그램 생성(히스토그램:값의 빈도를 막대 길이로 표현한 그래프,연속적인 값만 표현가능,막대그래프와는 다름)


> ifelse(mpg2$total>=20,"pass","fail")
[1] "pass" "pass" "pass" "pass" "pass" "pass" "pass" "pass"
  [9] "pass" "pass" "pass" "pass" "pass" "pass" "pass" "fail"
> mpg2$test<-ifelse(mpg2$total>=20,"pass","fail")		#ifelse의 값을 mpg2$test에 대입	
> View(mpg2)
> table(mpg2$test)							#table을 이용해 연비합격빈도표 생성, 빈도표:변수에 값이 몇 개씩 존재하는지 개수를 나타낸 표
fail pass 
 106  128 
> qplot(mpg2$test)							#qplot을 이용해 연비합격빈도 막대그래프 생성(히스토그램과 달리 연속적이지 않은 값 표현가능)


> mpg2$grade<-ifelse(mpg2$total>=30,"A",ifelse(			#total이 30이상 A, 30미만 20이상 B, 20미만 C
+ mpg2$total>=20,"B","C"))
> head(mpg2,20)
> View(mpg2)
> table(mpg2$grade)
  A   B   C 
 10 118 106 
> qplot(mpg2$grade)


> mpg2$grade2<-ifelse(mpg2$total>=30,"A",ifelse(
+ mpg2$total>=25,"B",ifelse(mpg2$total>=20,"C","D")))
> View(mpg2)
> table(mpg2$grade2)
  A   B   C   D 
 10  33  85 106 
> qplot(mpg2$grade2)



> install.packages("readxl")
> library(readxl)
> setwd("c://r1")                                                           
> df2<-read_excel("Sample1.xlsx")                                                           
> df2
# A tibble: 10 x 8
      ID SEX     AGE AREA    AMT17 Y17_CNT  AMT16 Y16_CNT
   <dbl> <chr> <dbl> <chr>   <dbl>   <dbl>  <dbl>   <dbl>
> View(df2)
> str(df2)									#속성 확인
> dim(df2)									#행수, 열수 확인
> ls(df2)									#데이터의 변수명 확인

> df2$AMT<-df2$AMT16+df2$AMT17					#새로운 파생변수 생성
> View(df2)									#표 확인
> df2$CNT<-df$Y16_CNT+df$Y17_CNT					#새로운 파생변수 생성
> df2$AGE50<-ifelse(df$AGE>=50,"Y","N")				#새로운 파생변수 생성
> df2$AGE_GR<-ifelse(df2$AGE>=50,"50대",ifelse(			#새로운 파생변수 생성
+ df2$AGE>=40,"40대",ifelse(df2$AGE>=30,"30대",ifelse(
+ df2$AGE>=20,"20대","20대미만"))))
