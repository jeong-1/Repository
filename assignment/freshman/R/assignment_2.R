age <- matrix(c(25,33,32,37,27,38),ncol=3,byrow=TRUE)
age

info <- matrix(c('177cm','68kg','156cm','57kg','160cm','48kg','175cm','60kg'),
+ ncol=2,byrow=TRUE)
dimnames(info) <- list(c('1번','2번','3번','4번'),c('키','몸무게'))	#dimnames를 이용하여 행렬에 이름 부여, list를 이용해야함
info


> cbind((info),c('남','남','여','여'))					#cbind: 새로운 열 추가
    키      몸무게     
1번 "177cm" "68kg" "남"
2번 "156cm" "57kg" "남"
3번 "160cm" "48kg" "여"
4번 "175cm" "60kg" "여
> info										#대입없이는 info 값이 바뀌지X
    키      몸무게
1번 "177cm" "68kg"
2번 "156cm" "57kg"
3번 "160cm" "48kg"
4번 "175cm" "60kg"

> info <- cbind((info),c('남','남','여','여'))				#info에 대입
> info
    키      몸무게     
1번 "177cm" "68kg" "남"
2번 "156cm" "57kg" "남"
3번 "160cm" "48kg" "여"
4번 "175cm" "60kg" "여"

> a1 <- c('180cm','70kg','남')							
> a2 <- c('165cm','55kg','여')
> info <- rbind(info,a1,a2)							#rbind: 새로운 행 추가
> info
    키      몸무게     
1번 "177cm" "68kg" "남"
2번 "156cm" "57kg" "남"
3번 "160cm" "48kg" "여"
4번 "175cm" "60kg" "여"
a1  "180cm" "70kg" "남"
a2  "165cm" "55kg" "여"

> dimnames(info) <- list(c('1번','2번','3번','4번','5번','6번'),c('키','몸무게','성별'))
> info
    키      몸무게 성별
1번 "177cm" "68kg" "남"
2번 "156cm" "57kg" "남"
3번 "160cm" "48kg" "여"
4번 "175cm" "60kg" "여"
5번 "180cm" "70kg" "남"
6번 "165cm" "55kg" "여


> info2 <- matrix(c('177cm','68kg','156cm','57kg','160cm','48kg','175cm','60kg'),
+ ncol=2,byrow=TRUE)
> info2
     [,1]    [,2]  
[1,] "177cm" "68kg"
[2,] "156cm" "57kg"
[3,] "160cm" "48kg"
[4,] "175cm" "60kg"

> rownames(info2) <- c('1번','2번','3번','4번')				#rownames로 행 이름 넣기
> info2
    [,1]    [,2]  
1번 "177cm" "68kg"
2번 "156cm" "57kg"
3번 "160cm" "48kg"
4번 "175cm" "60kg"

> colnames(info2) <- c('키','몸무게')						#colnames로 열 이름 넣기
> info2
    키      몸무게
1번 "177cm" "68kg"
2번 "156cm" "57kg"
3번 "160cm" "48kg"
4번 "175cm" "60kg"


> x <- matrix(c(1:9),ncol=3,dimnames=list(c('r1','r2','r3'),	#dimnames를 matrix안에 써주면 할당연산자(<-)대신 연산자(=)사용
+ c('c1','c2','c3')))								#행이름우선, 열이름다음
> x
   c1 c2 c3
r1  1  4  7
r2  2  5  8
r3  3  6  9

> matrix(1:12,ncol=4,byrow=TRUE)						#숫자 1부터 9까지
     [,1] [,2] [,3] [,4]
[1,]    1    2    3    4
[2,]    5    6    7    8
[3,]    9   10   11   12

> mat <- matrix(LETTERS[1:12],nrow=4,dimnames=list(			#LETTERS를 이용하여 알파벳 12번째까지
+ c('R1','R2','R3','R4'),c('C1','C2','C3')))
> mat
   C1  C2  C3 
R1 "A" "E" "I"
R2 "B" "F" "J"
R3 "C" "G" "K"
R4 "D" "H" "L"


> attributes(mat)									#전체적인 속성
$dim											#차원, 행이름, 열이름
[1] 4 3

$dimnames
$dimnames[[1]]
[1] "R1" "R2" "R3" "R4"

$dimnames[[2]]
[1] "C1" "C2" "C3"
> dim(mat)
[1] 4 3										#몇행, 몇열이냐(차원을 물을때)
> dimnames(mat)									#각 행렬의 이름
[[1]]
[1] "R1" "R2" "R3" "R4"

[[2]]
[1] "C1" "C2" "C3"
> length(mat)									#원소의 개수
[1] 12
> mode(mat)										#데이터형
[1] "character"



> mat <- array(1:12, dim=c(3,4))						#배열#
> mat											#array(,dim=c(행수,열수,차원수))
     [,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12

> mat1 <- array(1:12, dim=c(2,2,3))
> mat1
, , 1

     [,1] [,2]
[1,]    1    3
[2,]    2    4

, , 2

     [,1] [,2]
[1,]    5    7
[2,]    6    8

, , 3

     [,1] [,2]
[1,]    9   11
[2,]   10   12

> array(1:12)									#dim을 쓰지않으면
 [1]  1  2  3  4  5  6  7  8  9 10 11 12					#->벡터와 같은 형태로 나옴


> ary <- array(1:24, dim=c(2,3,4),						
+ dimnames=list(c('R1','R2'),c('C1','C2','C3'),				#행이름,열이름,차원이름
+ c('D1','D2','D3','D4')))
> ary									
, , D1

   C1 C2 C3
R1  1  3  5
R2  2  4  6

, , D2

   C1 C2 C3
R1  7  9 11
R2  8 10 12

, , D3

   C1 C2 C3
R1 13 15 17
R2 14 16 18

, , D4

   C1 C2 C3
R1 19 21 23
R2 20 22 24


> mode(ary)										#데이터형
[1] "numeric"
> length(ary)									#원소의 개수
[1] 24
> dim(ary)										#몇행, 몇열, 몇차원이냐(차원)
[1] 2 3 4
> dimnames(ary)									#각 배열의 이름
[[1]]
[1] "R1" "R2"

[[2]]
[1] "C1" "C2" "C3"

[[3]]
[1] "D1" "D2" "D3" "D4"



#mat의 첫번째 요소 값을 20으로 변경하려면?(mat은 2차원)
> mat[1,1]<-20
> mat
     [,1] [,2] [,3] [,4]
[1,]   20    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12
#mat1의 첫번째 요소 값을 20으로 변경하려면?(mat1은 3차원)
> mat1[1,1,1]<-20
> mat1
, , 1

     [,1] [,2]
[1,]   20    3
[2,]    2    4

, , 2

     [,1] [,2]
[1,]    5    7
[2,]    6    8

, , 3

     [,1] [,2]
[1,]    9   11
[2,]   10   12



											#리스트#
> my1 <- list("홍길동","교육자","서울",1.2)					#키는 없고 값만 있는 경우
> my1
[[1]]											#키									
[1] "홍길동"										#값

[[2]]
[1] "교육자"

[[3]]
[1] "서울"

[[4]]
[1] 1.2

> myf <- list(friend="홍길동",mynum=7,mya='z')				#키와 값이 모두 있을때
> myf											#값이 문자이면 ""사용(숫자이면 그냥 적음)
$friend										#&:키
[1] "홍길동"										#[]:값

$mynum										
[1] 7											

$mya
[1] "z"

> myf$mys<-"hello"								#새로운 키와 값 추가
> myf
$friend
[1] "홍길동"

$mynum
[1] 7

$mya
[1] "z"

$mys											#키와 값이 추가됨
[1] "hello"

> myf$myfood <- c('된장찌개','돈까스','자장면')				#새로운 키와 여러개의 값 추가
> myf
$friend
[1] "홍길동"

$mynum
[1] 7

$mya
[1] "z"

$mys
[1] "hello"

$myfood
[1] "된장찌개" "돈까스"   "자장면"

> myf$myp <- "black"								#myp 추가
> myf
$friend
[1] "홍길동"

$mynum
[1] 7

$mya
[1] "z"

$mys
[1] "hello"

$myfood
[1] "된장찌개" "돈까스"   "자장면"  

$myp
[1] "black"


> myf$mynum										#mynum의 값 확인
[1] 7
> myf[1]										#대괄호 1개: 키와 값 확인
$friend
[1] "홍길동"
> myf[[1]]										#대괄호 2개: 값만 확인
[1] "홍길동"
> myf <- myf[-4]									#4번째 키와 값(요소) 삭제
> myf
$friend
[1] "홍길동"

$mynum
[1] 7

$mya
[1] "z"

$myfood
[1] "된장찌개" "돈까스"   "자장면"  

$myp
[1] "black"


> lst <- list(5:10,c("A","B","C"),						#값만 있는 형태
+ matrix(c(T,T,F,T), ncol=2))							#리스트 안에 벡터와 행렬을 같이 담고있음
> lst
[[1]]
[1]  5  6  7  8  9 10

[[2]]
[1] "A" "B" "C"

[[3]]
     [,1]  [,2]
[1,] TRUE FALSE
[2,] TRUE  TRUE

> mode(lst)										#리스트의 기본형은 리스트
[1] "list"
> length(lst)									#리스트의 성분 개수: 전체적으로 판단
[1] 3
> names(lst)									#키가 없는 상태: 이름 없음
NULL



> my.f <-list(city="SEOUL", 
+ parent=list(father="RYU", f.age=40, 					#리스트중첩-> 리스트 안의 키 parent의 값을 다시 리스트로 정의
+ mother="JIN", m.age=37),
+ child=list(son=2, son.n=c("min","won"),
+ son.a=c(10,10)))
> my.f
$city
[1] "SEOUL"

$parent					
$parent$father
[1] "RYU"

$parent$f.age
[1] 40

$parent$mother
[1] "JIN"

$parent$m.age
[1] 37


$child
$child$son
[1] 2

$child$son.n
[1] "min" "won"

$child$son.a
[1] 10 10

> mode(my.f)
[1] "list"
> length(my.f)
[1] 3											
> names(my.f)
[1] "city"   "parent" "child" 						#최상위 키의 이름만



> x <- list("홍길동",20,"2020001","서울",c("IT 융합","데이터관리"))
> x
[[1]]
[1] "홍길동"

[[2]]
[1] 20

[[3]]
[1] "2020001"

[[4]]
[1] "서울"

[[5]]
[1] "IT 융합"    "데이터관리


> y <- list(성명="홍길동",나이=20,학번="2020001",주소="서울",
+ 수강과목=c("IT 융합","데이터관리"))
> y
$성명
[1] "홍길동"

$나이
[1] 20

$학번
[1] "2020001"

$주소
[1] "서울"

$수강과목
[1] "IT 융합"    "데이터관리



											#데이터프레임#
> df <- data.frame(irum=c("조정순","한민애","고승민"),age=c(43,23,33))
> df											#데이터프레임은 값이 여러개(물론 리스트도 값이 여러개일 수 있다)
    irum age
1 조정순  43
2 한민애  23
3 고승민  33


> irum <- c("조정순","한민애","고승민")
> age <- c(43,23,33)
> df2 <- data.frame(irum,age)
> df2 <- data.frame(이름=irum,나이=age)					#데이터프레임의 열 이름변경
> df2
    이름 나이
1 조정순   43
2 한민애   23
3 고승민   33


> df2$이름										#'이름'열의 값들 출력
[1] "조정순" "한민애" "고승민"
Levels: 고승민 조정순 한민애							#데이터프레임의 문자값은 팩터로 지정됨
> df2$나이+1										#'나이'열의 값들에 각각+1
[1] 44 24 34
> df2 <-df2$나이+1									#대입을 해야만 데이터프레임 값이 바뀜
> df2
[1] 44 24 34



> carinfo <- matrix(c('11km','13km','10km','h사','p사','r사'),nrow=3)
> carinfo 
     [,1]   [,2] 
[1,] "11km" "h사"
[2,] "13km" "p사"
[3,] "10km" "r사"
> dfr <- as.data.frame(carinfo)						#as함수를 이용하여 행렬을 데이터프레임으로 형 변환
> dfr
    V1  V2
1 11km h사
2 13km p사
3 10km r사
> names(dfr) <- c("연비","제조사")						#데이터프레임의 열에 이름 부여
> dfr
  연비 제조사
1 11km    h사
2 13km    p사
3 10km    r사


> height <- c(168,182,175,177,172)
> weight <- c(62,69,65,69,58)
> sex <- c("female","male","male","male","female")
> married <- c(T,F,F,T,T)

> my.df <- data.frame(height,weight,sex,married,
+ row.names=c("kim","park","choi","lee","han"))				#names->열에 이름부여, row.names->행에 이름부여
> my.df
     height weight    sex married
kim     168     62 female    TRUE
park    182     69   male   FALSE
choi    175     65   male   FALSE
lee     177     69   male    TRUE
han     172     58 female    TRUE

> length(my.df)
[1] 4											#length는 열의 개수를 나타내줌
> mode(my.df)
[1] "list"										#데이터프레임을 자료형->리스트
> names(my.df)									#names-> 열이름
[1] "height"  "weight"  "sex"     "married"				
> row.names(my.df)								#row.names-> 행이름
[1] "kim"  "park" "choi" "lee"  "han" 					
> dim(my.df)									#몇 행, 몇 열, 몇 차원
[1] 5 4

> my.df$weight									#weight열의 값들 출력
[1] 62 69 65 69 58
> my.df$sex										#문자형이 들어간 데이터프레임의 값은 팩터형으로 바뀜
[1] "female" "male"   "male"   "male"   "female"			
Levels: female male
> is.numeric(my.df$weight)
[1] TRUE
> is.factor(my.df$sex)								#sex열이 팩터인지아닌지
[1] TRUE


> my.df1 <- data.frame(height,weight,sex,married,			#데이터프레임에서 stringsAsFactors는 기본적으로 TRUE로 설정되어있음
+ stringAsFactors=FALSE,							#stringsAsFactors=FALSE
+ row.names=c("kim","park","choi","lee","han"))
> my.df1$sex									#sex열의 값이 팩터로 바뀌지않음
[1] "female" "male"   "male"   "male"   "female"			#문자형으로 들어감



> setwd("c:\\r1")									#경로지정(작업디렉토리설정)
> pinfo <-read.table("c:\\r1\\personal.txt",header=TRUE)		#header=TRUE-> 문자형데이터의 첫번째 행은 머릿글이다 
> pinfo										
    이름 거주지역 나이 성별
1 홍민수     인천   25   남
2 조정란     경기   33   여
3 국정수     서울   43   남
4 라윤정     서울   35   여
5 한주연     인천   37   남
> pjobinfo <-read.table("pjob.txt",header=TRUE)
> pjobinfo
    이름     직업
1 홍민수     학생
2 조정란   공무원
3 박장곤   회사원
4 한지수   자영업
5 한주연 프리랜서
6 주민정     학생


> lifeinfo <-data.frame(취미=c("목공예","패러글라이딩","등산","독서","꽃꽃이"),
+ 관심사=c("취업","아파트분양","주택대출","이직","교통인프라"))
> myinfo <-cbind(pinfo,lifeinfo)						#cbind를 이용하여 데이터 프레임끼리 합침(열방향으로 합쳐짐)
> myinfo
    이름 거주지역 나이 성별         취미     관심사
1 홍민수     인천   25   남       목공예       취업 
2 조정란     경기   33   여 패러글라이딩 아파트분양
3 국정수     서울   43   남         등산   주택대출
4 라윤정     서울   35   여         독서       이직
5 한주연     인천   37   남       꽃꽃이 교통인


> otherinfo <-data.frame(이름=c("황성주","윤준영"),거주지역=c("강원","충북"),
+ 나이=c(42,45),성별=c("여","여"))
> ttinfo <-rbind(pinfo,otherinfo)						#rbind를 이용하여 데이터프레임끼리 합침(행방향으로 합쳐짐)
> ttinfo
    이름 거주지역 나이 성별
1 홍민수     인천   25   남
2 조정란     경기   33   여
3 국정수     서울   43   남
4 라윤정     서울   35   여
5 한주연     인천   37   남
6 황성주     강원   42   여
7 윤준영     충북   45   여


> merge(pinfo,pjobinfo)								#merge를 이용하여 두 개의 데이터프레임에 공통된 사람들의 정보만 나타내어줌
    이름 거주지역 나이 성별     직업
1 조정란     경기   33   여   공무원
2 한주연     인천   37   남 프리랜서
3 홍민수     인천   25   남     학생
> merge(pinfo,pjobinfo,all=TRUE)						#두 데이터프레임에 공통적으로 해당되지 않은 데이터들은 NA처리
    이름 거주지역 나이 성별     직업
1 국정수     서울   43   남     <NA>
2 라윤정     서울   35   여     <NA>
3 박장곤     <NA>   NA <NA>   회사원
4 조정란     경기   33   여   공무원
5 주민정     <NA>   NA <NA>     학생
6 한주연     인천   37   남 프리랜서
7 한지수     <NA>   NA <NA>   자영업
8 홍민수     인천   25   남     학생

											#subset(select)함수: 특정 열만으로 데이터구성
> data <-subset(pinfo,select=-거주지역)					#거주지역 열은 제외
> data										
    이름 나이 성별
1 홍민수   25   남
2 조정란   33   여
3 국정수   43   남
4 라윤정   35   여
5 한주연   37   남
> data1 <-subset(pinfo,select=c(이름,나이))					#이름열과 나이열만으로 새로운 데이터 구성
> data1
    이름 나이
1 홍민수   25
2 조정란   33
3 국정수   43
4 라윤정   35
5 한주연   37
> data2 <-cbind(pinfo,결혼=c(FALSE,TRUE,TRUE,FALSE,TRUE))		#pinfo에 새로운 열 추가
> data2 
    이름 거주지역 나이 성별  결혼
1 홍민수     인천   25   남 FALSE
2 조정란     경기   33   여  TRUE
3 국정수     서울   43   남  TRUE
4 라윤정     서울   35   여 FALSE
5 한주연     인천   37   남  TRUE


> data2[-3,]									#3번째 행 제거
    이름 거주지역 나이 성별  결혼							#실제로 data2에서 데이터가 삭제된건X
1 홍민수     인천   25   남 FALSE
2 조정란     경기   33   여  TRUE
4 라윤정     서울   35   여 FALSE
5 한주연     인천   37   남  TRUE
> data2[,-5]									#5번째 열 제거
    이름 거주지역 나이 성별								#실제로 data2에서 데이터가 삭제된건X
1 홍민수     인천   25   남
2 조정란     경기   33   여
3 국정수     서울   43   남
4 라윤정     서울   35   여
5 한주연     인천   37   남
> ncol(data2)									#열 개수
[1] 5
> nrow(data2)									#행 개수
[1] 5


> data2 <-data2[,-5]								#실제로 data2에서 데이터 삭제
> data2 <-data2[-3,]
> data2
    이름 거주지역 나이 성별
1 홍민수   인천   25   남
2 조정란   경기   33   여
4 라윤정   서울   35   여
5 한주연   인천   37   남
> colnames(data2) <-c('성명','거주지','나이','성별')			#데이터프레임 열의 이름 변경
> data2
    성명 거주지 나이 성별
1 홍민수   인천   25   남
2 조정란   경기   33   여
4 라윤정   서울   35   여
5 한주연   인천   37   남
> names(data2)
[1] "성명"   "거주지" "나이"   "성별"  




> x <-data.frame(성명=c("홍길동","손오공"),나이=c(20,30),
+ 주소=c("서울","부산"))
> x
    성명 나이 주소
1 홍길동   20 서울
2 손오공   30 부산

> x <-cbind(x,학과=c("e-비지니스","경영"))					#데이터프레임에 새로운 열(학과) 추가
> x
    성명 나이 주소       학과
1 홍길동   20 서울 e-비지니스
2 손오공   30 부산       경영

> y <-data.frame(성명=c("장발장"),나이=c(40),주소=c("파리"),학과=c("행정"))
> y
    성명 나이 주소 학과
1 장발장   40 파리 행정

> x <-rbind(x,y)									#행 방향으로 데이터프레임끼리 합침
> x
    성명 나이 주소       학과
1 홍길동   20 서울 e-비지니스
2 손오공   30 부산       경영
3 장발장   40 파리       행정


> x[3,2]										#데이터프레임 3행 2열의 요소값 출력
[1] 40
> x[3,]										#3행 전체의 요소값 출력
    성명 나이 주소 학과
3 장발장   40 파리 행정
> x[,2]										#2열 전체의 요소값 출력
[1] 20 30 40
> x[-2,]										#2행을 제외한 데이터프레임 출력
    성명 나이 주소       학과
1 홍길동   20 서울 e-비지니스
3 장발장   40 파리       행정
> x[1]										#첫번째 열 출력
    성명
1 홍길동
2 손오공
3 장발장
> x["성명"]										#첫번째 열 출력
    성명
1 홍길동
2 손오공
3 장발장


> x$성명										#성명의 요소값 확인
[1] "홍길동" "손오공" "장발장"							
Levels: 손오공 홍길동 장발장							#데이터프레임의 텍스트로 된 데이터는 팩터형으로 바뀜-> Levels가 함께 나옴
> x[["성명"]]									#성명의 요소값 확인
[1] "홍길동" "손오공" "장발장
Levels: 손오공 홍길동 장발장
> x[[1]]										#성명(1열)의 요소값 확인
[1] "홍길동" "손오공" "장발장"
Levels: 손오공 홍길동 장발장


> x[[1]][2]										#1열의 값 중 두번째 요소값
[1] "손오공"
Levels: 손오공 홍길동 장발장
> x[2,1]										#2행 1열의 요소값
[1] "손오공"
Levels: 손오공 홍길동 장발장
> x[1,2]<-21									#1행 2열의 요소값을 21로 바꿔줌
> x
    성명 나이 주소       학과
1 홍길동   21 서울 e-비지니스
2 손오공   30 부산       경영
3 장발장   40 파리       행정
> x[1,"나이"]<-22									#1행 2열(나이)의 요소값을 21로 바꿔줌
> x
    성명 나이 주소       학과
1 홍길동   22 서울 e-비지니스
2 손오공   30 부산       경영
3 장발장   40 파리       행정