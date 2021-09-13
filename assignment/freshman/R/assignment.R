> print("hello r world")					#문자열 출력
[1] "hello r world"
> print(
+ "hello r world")						#명령어가 +기호로 계속됨
[1] "hello r world"						#esc로 명령어 종료->명령프롬프트로 돌아감

> ?print
> help(print) 							#도움말
> example(print)
> help.search("prin") 						#prin이 포함되는 함수명 검색
> ??prin

									#R패키지#
> install.packages("ggplot2")					#패키지 설치(더블쿼티션)->언어선택창 나옴
> library(ggplot2)						#패키지 로드(쿼티션 없이)
> update.packages("ggplot2")					#패키지 업데이트(패키지 하나만 지정하려면 더블쿼티션, 모두 다는())
> remove.packages("ggplot2")					#패키지 제거

									#작업디렉토리를 설정하면 저장될 위치를 계속 적지 않아도 됨
> read.csv("c://r1/seoulpopulation.csv")			#작업디렉토리 설정전(경로를 매번 지정해줘야 함)
     자치구   남자   여자
1    종로구  80531  83291
2      중구  66755  67574					
> setwd("c://r1")							#작업디렉토리 설정#
> read.csv("seoulpopulation.csv")				#작업디렉토리 설정후(경로 지정 따로 안해줘도 됨)
     자치구   남자   여자
1    종로구  80531  83291
2      중구  66755  67574
> data1 <-read.csv("seoulpopulation.csv")			#데이터를 변수에 대입
> data1
     자치구   남자   여자
1    종로구  80531  83291
2      중구  66755  67574

> x1 <-c(10,20,30)						#변수에 숫자 여러개 할당(c함수)
> x1
[1] 10 20 30
> y1 <-c("hello","hi","hello~!")				#변수에 문자열 여러개 할당(c함수, 더블쿼티션)
> y1
[1] "hello"   "hi"      "hello~!"

									#사칙연산#
> 100^2+300								#승수계산(^),(**)
[1] 10300		
> 500%%15								#나머지(%%)
[1] 5
> 500%/%15								#나눗셈(%/%): 정수 전용 몫(정수로 나옴)
[1] 33
> 500/15								#나눗셈(/): 정수/실수 전용 몫
[1] 33.33333

> x <-5
> y <-3.14
> x+y
[1] 8.14
> x>y
[1] TRUE 								#논리값

> x=y									#x에 y의 값 대입(할당)
> x==y								#x와 y의 값 비교
[1] TRUE

										#데이터 기본형#
> mode(3+4)									#mode: 값들의 기본형(char, numeric, logical, complex)을 알려주는 함수
[1] "numeric"								#수치형(정수, 실수, 지수형으로 입력됨)
> mode(pi)									#pi: 파이를 나타내는 내장 상수
[1] "numeric"								#수치형
> mode(3<4)
[1] "logical"								#논리형
> mode(FALSE)								#TRUE, FALSE 전부 다 대문자로 입력해야 함 
[1] "logical"								#논리형
> mode("Hi")
[1] "character"								#문자형
> mode(1+4i)
[1] "complex"								#복소수형
> storage.mode(pi)							#storage.mode: 저장되는 데이터 타입(integer, double...)을 알려주는 함수
[1] "double"								#실수
> storage.mode(1:5)
[1] "integer"								#정수

> a1 <-177
> a2 <-163
> a3 <-170
> a4 <-NA									#NA(not available): 데이터 값 없음 (대문자로 작성)
> is.na(a4)									#a4에 na 존재여부
[1] TRUE

> height <-c(177,163,170,NA)	
> sum(height)		
[1] NA									#NA 때문에 결과 나오지X, NA가 있을때 함수를 사용하면 오류가 남
> height <-c(177,163,170,NA)
> sum(height,na.rm=TRUE)						#NA를 제거(remove)하고 나머지 값의 합
[1] 510

> rate <-NULL								#변수값이 미정인 상태, 일부러 비워놓은 값
> money <-c(1200000,950000,1300000)
> if(sum(money)>=300000){rate <-0.017}				#조건문 (~라면){~다}
> is.null(rate)
[1] FALSE

										#데이터의 형 변환#
> char.x <-"123"								#char.x는 변수
> mode(char.x)
[1] "character"								#문자형
> mode(char.x) <-"numeric"						#mode함수를 이용한 형 변환(더블쿼티션 이용), 변수의 mod를 " "로 바꿔줘라
> char.x
[1] 123									#수치형으로 바뀜(더블쿼티션 없음)

> char.x <-"123"
> mode(char.x)
[1] "character"								#문자형
> char.x <-as.numeric(char.x)						#as함수를 이용한 형 변환, as.원하는형으로(변수를 바꿔줘라)
> char.x
[1] 123
> mode(char.x)
[1] "numeric"								#수치형으로 바뀜

										#벡터#
										#벡터가 서로 다른 기본형을 원소로 가질 경우 한가지 형으로 자동 형 변환됨
										#문자형>복소수형>수치형(실수>정수)>논리형 순으로 우선순위가 있음
> c(3.14, 5+2i, 10)							#수치형,복소수형-> 복소수형
[1]  3.14+0i  5.00+2i 10.00+0i	
> c(365, 12, "ex")							#수치형,문자형-> 문자형
[1] "365" "12"  "ex" 
> c(123, 8710, TRUE, FALSE)						#수치형,논리형-> 수치형
[1]  123 8710    1    0
> c(TRUE, FALSE, 3-1i)							#논리형,복소수형-> 복소수형
[1] 1+0i 0+0i 3-1i
> c(TRUE, FALSE, "abc")							#논리형,문자형-> 문자형
[1] "TRUE"  "FALSE" "abc"  
> c(2+5i, "hello", 4i)							#복소수형,문자형-> 문자형
[1] "2+5i"  "hello" "0+4i" 
> c(3.14, 5)								#실수(double),정수(integer)-> 실수(double)
[1] 3.14 5.00

										#벡터를 만드는 방법#
										#(1)c함수이용 (2)연산자(:)이용 (3)변수를 정의한 뒤 일일이 할당
> 2:6										#연산자(:)를 이용한 벡터(문자형은 안됨)
[1] 2 3 4 5 6
> 2:-2
[1]  2  1  0 -1 -2
> TRUE:3									#TRUE=1, FALSE=0
[1] 1 2 3
> -3:FALSE
[1] -3 -2 -1  0
> 1:5+4									#각각의 값에 4를 더해 출력
[1] 5 6 7 8 9

										#sequence: 일정한 값을 순서대로 나열하는 함수#
> seq(1,3,.5)								#(처음값,끝값,증가값)
[1] 1.0 1.5 2.0 2.5 3.0							
> seq(1,20,length=5)							#length의 개수만큼 출력, 처음과 끝값의 중간값으로 개수를 맞춤
[1]  1.00  5.75 10.50 15.25 20.00
> seq(1,3)									#증가값이 없을 때는 1씩 증가
[1] 1 2 3
> seq(5)									#숫자가 하나만 적혀있을 때 적힌 숫자는 끝값(처음값 1로 설정됨, 1부터 끝값까지)
[1] 1 2 3 4 5

										#repeat: 원소들을 반복하여 나열하는 함수#
> rep(TRUE,7)										
[1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE			
> rep(c(1,2,3),2)
[1] 1 2 3 1 2 3
> rep(3:5,2)
[1] 3 4 5 3 4 5
> rep(seq(1,2,.5), each=2)						#원소를 각각(each) 반복
[1] 1.0 1.0 1.5 1.5 2.0 2.0

> rep(c('A','a'), each=2, len=7)					#Recycle Rule에 의해서 다시 처음부터 길이가 될 때까지 반복
[1] "A" "A" "a" "a" "A" "A" "a"
> rep(c('A','a'), each=2, times=3)					#각각 2번씩 전체를 3번 반복
 [1] "A" "A" "a" "a" "A" "A" "a" "a" "A" "A" "a" "a"


#과제1번
> rep(0:4, each=5)
 [1] 0 0 0 0 0 1 1 1 1 1 2 2 2 2 2 3 3 3 3 3 4 4 4 4 4
#과제2번
> rep(seq(1,5), 5)
 [1] 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5
#과제3번
> rep(1:5, 5) + rep(0:4, each = 5)
 [1] 1 2 3 4 5 2 3 4 5 6 3 4 5 6 7 4 5 6 7 8 5 6 7 8 9