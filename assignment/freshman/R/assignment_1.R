> var1 <--1:5					
> var1
[1] -1  0  1  2  3  4  5
> is.vector(var1)					#벡터유무확인
[1] TRUE

> var1+2
[1] 1 2 3 4 5 6 7

> c<-as.character(var1)				#형변환
> c
[1] "-1" "0"  "1"  "2"  "3"  "4"  "5" 
> n<-as.numeric(var1)
> n
[1] -1  0  1  2  3  4  5

> var2<-c(1,5)					#c는 combine의 약자
> var2
[1] 1 5
> var2<-c(1:5)
> var2
[1] 1 2 3 4 5
> var3<-seq(1,5)
> var3
[1] 1 2 3 4 5

> (var3<-seq(1,5))				#소괄호로 묶으면 결과값을바로출력
[1] 1 2 3 4 5

> (var4<-seq(1,10,by=2))			#by=단계값(증가값)(그냥2라고 적어도됨)
[1] 1 3 5 7 9					#10 안쪽의 값까지만 출력
> (var5<-seq(1,10,by=3))
[1]  1  4  7 10

> var6<-c(1,2,3,c(1,2,3))			#벡터는중첩할수없다
> var6						#리스트를 이용해서만 중첩 가능
[1] 1 2 3 1 2 3

> var2+var3						#벡터끼리 연산가능
[1]  2  4  6  8 10

> str1<-'a'						
> str2<-"text"
> str1+str2						#문자형 데이터는 연산불가능
Error in str1 + str2 : 이항연산자에 수치가 아닌 인수



> coffee<-c(300,3000,4500,4500)						
> coffee
[1]   300 3000  4500  4500
> names(coffee)<-c("아메리카노","에스프레소","카페모카","라떼")		#데이터에 이름부여, names(변수명)
> coffee
아메리카노 에스프레소   카페모카       라떼 
       300      3000       4500       4500 

> View(coffee)									#표로 확인

> acoffee<-c("아메리카노","에스프레소")
> bcoffee<-c("카페라떼","헤이즐넛","녹차라떼")
> coffeemenu<-c(acoffee,bcoffee)						#두벡터를 합한 새로운 벡터
> coffeemenu
[1] "아메리카노" "에스프레소" "카페라떼"   "헤이즐넛" "녹차라떼"

> coffee[2]										#coffee의 두번째 요소에 접근(확인)
에스프레소 
      3000 
> coffee["카페모카"]
카페모카 
    4500 


> coffee[1]<-3000									#첫번째 요소 3000으로 변경
> coffee
아메리카노 에스프레소   카페모카       라떼 
      3000       3000       4500       4500 
> coffee[2:4]									#두번째 요소부터 4번째 요소까지만 출력
에스프레소   카페모카       라떼 
      3000       4500       4500 
> coffee[-3]									#세번째 요소만 제외하고 출력
아메리카노 에스프레소       라떼 
      3000       3000       4500 
> coffee[c(1,3)]									#첫번째와 세번째 요소만 출력, c함수 사용
아메리카노   카페모카 
      3000       4500 
> coffee[2]+500
에스프레소 
      3500 
> coffee+1000									#모든 요소에 +1000, 한번의 계산 결과값만 출력 coffee값은 바뀌지 않음
아메리카노 에스프레소   카페모카       라떼 
      4000       4000       5500       5500 
> coffee
아메리카노 에스프레소   카페모카       라떼 
      3000       3000       4500       4500 
> coffee<-coffee+1000								#수정한 값을 벡터에 할당
> coffee
아메리카노 에스프레소   카페모카       라떼 
      4000       4000       5500       5500 



> ashop<-c("아메리카노","카푸치노","카페모카")
> bshop<-c("아메리카노","카페모카","모카치노")
> ushop<-union(ashop,bshop)							#벡터의 합집합, 중복되는 요소가 있을때 중복을 제외하고 출력
> ushop
[1] "아메리카노" "카푸치노"   "카페모카"   "모카치노"  

> ishop<-intersect(ashop,bshop)						#벡터의 교집합
> ishop
[1] "아메리카노" "카페모카"

> sshop<-setdiff(ashop,bshop)							#벡터의 차집합
> sshop										#앞에 있는 벡터에서 뒤에있는 벡터값을 빼줌
[1] "카푸치노"									

> identical(ashop,bshop)			#identical: 두항목이 완전히(구성&개수)일치하면 true, 아니면 false#
[1] FALSE

> cshop<-c("아메리카노","카페모카","카푸치노","카페모카")			
> identical(ashop,cshop)
[1] FALSE										#구성요소는 같지만 개수가 달라서 false
> setequal(ashop,cshop)				#setequal: 개수가 달라도 구성요소가 같으면 true#
[1] TRUE



> vec1<-c(-1,0,1)									
> str(vec1)										#str:변수의 속성 확인
 num [1:3] -1 0 1									#데이터형, 요소개수, 각각의 요소
> length(vec1)									#length: 벡터의 길이 확인
[1] 3

> vec2<-c("hello","hi~!")
> str(vec2)
 chr [1:2] "hello" "hi~!"
> length(vec2)
[1] 2

> vec3<-c(TRUE,FALSE,TRUE,FALSE)
> str(vec3)
 logi [1:4] TRUE FALSE TRUE FALSE
> length(vec3)
[1] 4

> remove(vec1)									#데이터세트(여기선 벡터)삭제	
> rm(vec2)
> vec1
에러: 객체 'vec1'를 찾을 수 없습니다
> vec2
에러: 객체 'vec2'를 찾을 수 없습니다


											#팩터#
> pet<-factor(c("강아지","강아지","고양이"),					#응답값(중복가능)
+ c("강아지","고양이","풍뎅이"))							#보기값(중복불가), c문자열 중첩해서 사용
> pet
[1] 강아지 강아지 고양이
Levels: 강아지 고양이 풍뎅이							#보기값이 Levels로 나옴

> nlevels(pet)									#levels의 개수파악
[1] 3
> levels(pet)[1]									#levels의 첫번째값
[1] "강아지"
> levels(pet)[3]
[1] "풍뎅이"



> religion<-factor(c("천주교","기독교","기독교","불교","불교","무교"),
+ c("기독교","불교"))
> religion
[1] <NA>   기독교 기독교 불교   불교   <NA>  					#보기에 없는 항목은 NA로 처리됨
Levels: 기독교 불교

> religion<-factor(c("천주교","기독교","기독교","불교","불교","무교"))
> religion										#levels(보기값)를 적지않으면 결과값으로 levels를 구성
[1] 천주교 기독교 기독교 불교   불교   무교  
Levels: 기독교 무교 불교	천주교							

> table(religion)									#table 함수: 결과값이 각각 몇 개 존재하는가 확인
religion
기독교   무교   불교 천주교 
     2      1      2      1 
> unclass(religion)								#unclass 함수: 텍스트로 되어있는 데이터를 단순한 숫자값으로 변경
[1] 4 1 1 3 3 2					
attr(,"levels")
[1] "기독교" "무교"   "불교"   "천주교"						#기독교=1,무교=2,불교=3,천주교=4



> width<-factor(c("18평","24평","24평","32평","33평","18평"))		#순서가 있는 데이터들
> width										#ordered=FALSE가 생략되어있음
[1] 18평 24평 24평 32평 33평 18평
Levels: 18평 24평 32평 33평
> width<-factor(c("18평","24평","24평","32평","33평","18평"),
+ ordered=TRUE)									#순서형 데이터표현
> width										#ordered=TRUE(명목형 자료를 순서형으로 변경)
[1] 18평 24평 24평 32평 33평 18평
Levels: 18평 < 24평 < 32평 < 33평



> vec<-c("yes","no","yes")							#문자벡터
> fct<-factor(vec)								#벡터를 팩터형으로 변환
> fct
[1] yes no  yes
Levels: no yes

> length(fct)									#팩터의 응답값의 길이(nlevels 아님)
[1] 3
> mode(fct)										#팩터의 형: 항상 수치형
[1] "numeric"
> levels(fct)									
[1] "no"  "yes"				
> nlevels(fct)									#보기값이 몇 개인지 확인
[1] 2

> vec2<-c("M","F","M","F","m")
> names(vec2)<-c("1st","2nd","3rd","4th","5th")
> vec2
1st 2nd 3rd 4th 5th 								#벡터의 이름
"M" "F" "M" "F" "m" 

> fct2<-factor(vec2, levels=c("M","F"),					#팩터형으로 변경
+ labels=c("Male","Female"))							#labels를 이용하여 levels의 이름을 Male과 Female로 지정
> fct2
   1st    2nd    3rd    4th    5th 
  Male Female   Male Female   <NA> 						#levels(보기값)에 없는 m은 NA로 표시됨
Levels: Male Female

> length(fct2)									#팩터의 길이
[1] 5
> mode(fct2)									#팩터의 형
[1] "numeric"									
> levels(fct2)
[1] "Male"   "Female"
> names(fct2)									#각 원소의 이름
[1] "1st" "2nd" "3rd" "4th" "5th"


> vec3<-c("high","low","high","middle","middle")
> fct3<-factor(vec3)
> fct3<-factor(vec3,ordered=TRUE)						#ordered=TRUE로 순서형 자료 표현
> fct3
[1] high   low    high   middle middle
Levels: high < low < middle							#순서가 잘못됨
> fct3<-ordered(vec3,levels=c("low","middle","high"))			#ordered()를 사용해 levels의 순서를 지정
> fct3
[1] high   low    high   middle middle
Levels: low < middle < high

> length(fct3)
[1] 5
> mode(fct3)
[1] "numeric"
> levels(fct3)
[1] "low"    "middle" "high" 



> x<-c(25,33,32,37,27,38)							#실제로 벡터는 세로로(열 방향) 배열되어 있음
> View(x)

											#행렬(2차원)#
> age<-matrix(c(25,33,32,37,27,38),nrow=3)				#행 3개(row=행, col=열)
> age											#행렬일때 행과 열 중 하나만 적으면됨
     [,1] [,2] 									#데이터 출력 기본적으로 열(세로)방향
[1,]   25   37
[2,]   33   27
[3,]   32   38

> age<-matrix(c(25,33,32,37,27,38),ncol=3)				#열 3개
> age
     [,1] [,2] [,3]
[1,]   25   32   27
[2,]   33   37   38

> age<-matrix(c(25,33,32,37,27,38),ncol=3,byrow=TRUE)			#byrow를 사용해 행(가로)방향으로 데이터를 변경
> age											
     [,1] [,2] [,3]
[1,]   25   33   32
[2,]   37   27   38



> info<-matrix(c('177cm','68kg','156cm','57kg','160cm','48kg','175cm','60kg'),
+ ncol=2,byrow=TRUE)
> info
     [,1]    [,2]  
[1,] "177cm" "68kg"
[2,] "156cm" "57kg"
[3,] "160cm" "48kg"
[4,] "175cm" "60kg"

> dimnames(info)<-list(c("1번","2번","3번","4번"),c("키","몸무게"))	#각 행렬의 이름부여(행 이름 우선)
> info										#list이용 
    키      몸무게
1번 "177cm" "68kg"
2번 "156cm" "57kg"
3번 "160cm" "48kg"
4번 "175cm" "60kg