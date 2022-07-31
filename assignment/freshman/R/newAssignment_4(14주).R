#### 한국복지패널데이터 분석 ####
https://www.koweps.re.kr
#### 가구의 경제활동을 연구해 정책 지원에 반영할 목적으로 발간하는 조사자료이다. 
전국에서 7000여 가구를 선정해 조사한 자료로 경제활동, 생활실태, 복지욕구 등 다양한 변수를 담고 있다. 
이 데이터를 분석하면 대한민국 사람들이 어떻게 살아가는지 알 수 있다.####

##데이터분석 준비하기##
install.packages("foreign")  # spss에서 작성된 파일을 불러올 수 있는 foreign 패키지 설치
library(foreign)             # foreign 패키지 로드
install.packages("dplyr")    # 전처리에 필요한 dplyr 패키지 설치
library(dplyr)               # dplyr 패키지 로드
install.packages("ggplot2")  # 시각화에 필요한 ggplot2 패키지 설치
library(ggplot2)             # ggplot2 패키지 로드
install.packages("readxl")   # 엑셀 파일을 불러올 수 있는 readxl 패키지 설치
library(readxl)              # readxl 패키지 로드

## 데이터 불러오기 ##
setwd("c:\\r1")
welfare <- read.spss(file = "Koweps_hpc10_2015_beta1.sav")
str(welfare)
View(welfare)
welfare <- read.spss(file = "Koweps_hpc10_2015_beta1.sav",
                         to.data.frame = T)			#to.data.frame=TRUE: 파일을 불러오면서 데이터 프레임으로 바꿔줌

#복사본 만들기
welfare1 <- welfare

#데이터 검토하기
head(welfare1)
tail(welfare1)
View(welfare1)
dim(welfare1)
str(welfare1)
summary(welfare1)

#변수명 바꾸기
welfare1 <- rename(welfare,			# 원본데이터
                  sex = h10_g3,           	# 성별 (바꿀이름=원래이름)
                  birth = h10_g4,         	# 태어난 연도
                  income = p1002_8aq1,    	# 월급
                  code_job = h10_eco9,    	# 직업 코드
                  code_region=h10_reg7)



#### 데이터 분석 절차 ####
##1단계:변수 검토 및 전처리##
##2단계:변수간 관계분석##

##성별에 따른 월급차이-성별에 따라 월급이 다를까?##
#성별변수 전처리하기#
class(welfare1$sex)	#class를 이용하여 변수의 형태 확인
 [1] "numeric"
table(welfare1$sex) 	#table을 이용하여 이상치(잘못입력된값) 확인(1,2가 아닌 다른 변수가 나온다면 이상치 존재하는것)
   1    2 
7578 9086 

#이상치(여기선 9) 결측처리
welfare1$sex <- ifelse(welfare1$sex == 9, NA, welfare1$sex)

#성별 항목 이름 부여(숫자데이터-> 텍스트데이터)
welfare1$sex <- ifelse(welfare1$sex == 1, "male", "female")
table(welfare1$sex)
qplot(welfare1$sex)							#qplot: 빈도 막대그래프로 데이터 확인


#월급변수 전처리#
class(welfare1$income)
summary(welfare1$income)
qplot(welfare1$income)
qplot(welfare1$income) + xlim(0, 1000)				#xlim으로 x값 구간 범위지정

#이상치(여기선 0과 9999) 확인
summary(welfare1$income)

#이상치 결측 처리
welfare1$income <- ifelse((welfare1$income==0 | welfare1$income==9999), NA, welfare1$income)
welfare1$income <- ifelse(welfare1$income %in% c(0, 9999), NA, welfare1$income)

#결측치 확인
table(is.na(welfare1$income))						#TRUE가 NA값


##성별에 따른 월급 차이 분석하기##
sex_income <- welfare1 %>%
  filter(!is.na(income)) %>%						#수입에서 NA가 아닌 것들만 필터링
  group_by(sex) %>%
  summarise(mean_income = mean(income))

sex_income

ggplot(data = sex_income, aes(x=sex, y=mean_income)) + 		#그래프로 표현(geom_col():막대그래프)
  geom_col()


##나이와 월급의 관계-"몇 살 때 월급을 가장 많이 받을까?##
#나이변수 검토 및 전처리#
class(welfare1$birth)
summary(welfare1$birth)
qplot(welfare1$birth)

# 이상치 확인
summary(welfare1$birth)

# 결측치 확인
table(is.na(welfare1$birth))

# 이상치 결측처리
welfare1$birth <- ifelse(welfare1$birth == 9999, NA, welfare1$birth)
table(is.na(welfare1$birth))


##파생변수->나이만들기##
welfare1$age <- 2015 - welfare1$birth + 1
summary(welfare1$age)
qplot(welfare1$age)


##나이와 월급의 관계분석##
##나이에 따른 월급 평균표 만들기##
age_income <- welfare1 %>%
  filter(!is.na(income)) %>%							#수입에서 NA가 아닌 것들만 필터링
  group_by(age) %>%
  summarise(mean_income = mean(income))

head(age_income)

ggplot(data = age_income, aes(x=age, y=mean_income)) + 		#그래프로 표현(geom_line():꺾은선 그래프)
  geom_line()


##연령대(나이를 묶은것)에 따른 월급 차이-"어떤 연령대의 월급이 가장 많을까?##
##연령대 변수 전처리-파생변수 만들기##
welfare1 <- welfare1 %>%
  mutate(ageg = ifelse(age < 30, "young",
                       ifelse(age <= 59, "middle", "old")))

table(welfare1$ageg)
qplot(welfare1$ageg)


##연령대에 따른 월급 차이 분석하기##
ageg_income <- welfare1 %>%
  filter(!is.na(income)) %>%
  group_by(ageg) %>%
  summarise(mean_income = mean(income))

ageg_income

ggplot(data = ageg_income, aes(x = ageg, y = mean_income)) + geom_col()


##그래프가 나이순으로 정렬되도록 설정##
ggplot(data = ageg_income, aes(x = ageg, y = mean_income)) +
  geom_col() +
  scale_x_discrete(limits = c("young", "middle", "old"))		#scale_x_discrete를 사용하여 x축 순서를 지정해줌


##연령대 및 성별 월급 차이-"성별 월급 차이는 연령대별로 다를까?##
##연령대 및 성별 월급 평균표 만들기##
sex_income <- welfare1 %>%
  filter(!is.na(income)) %>%							#수입에서 NA가 아닌 것들만 필터링
  group_by(ageg, sex) %>%							#연령대와 성별로 묶음
  summarise(mean_income = mean(income))					#수입의 평균을 냄

sex_income

##그래프 만들기##
ggplot(data = sex_income, aes(x=ageg, y=mean_income, 			#sex_income으로 그래프 그리기, x축은 연령대, y축은 수입평균, 그래프 안은 성별로 채워짐
  fill = sex)) +
  geom_col() +									#막대그래프
  scale_x_discrete(limits = c("young", "middle", "old"))		#scale_x_discrete를 사용하여 x축 순서를 지정해줌

ggplot(data = sex_income, aes(x = ageg, y = mean_income, fill = sex)) +
  geom_col(position = "dodge") +						#position="dodge"로 하나의 막대를 채우고 있는 데이터분리
  scale_x_discrete(limits = c("young", "middle", "old"))


##나이 및 성별 월급 차이 분석하기##
#성별 연령별 월급 평균표 만들기
sex_age <- welfare1 %>%
  filter(!is.na(income)) %>%
  group_by(age, sex) %>%							#나이와 성별로 묶음
  summarise(mean_income = mean(income))

head(sex_age)

# 그래프 만들기
ggplot(data = sex_age, aes(x=age, y=mean_income, col=sex)) + 	#col을 사용하여 성별의 색깔을 구분
  geom_line()									#꺾은선 그래프



