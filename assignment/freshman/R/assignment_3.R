> list1<-list(c(1,2,3),"hello")						#����Ʈ
> list1
[[1]]
[1] 1 2 3

[[2]]
[1] "hello"

> str(list1)									#str �Լ�: ���� �Ӽ�Ȯ��
List of 2										#�� ������ ������ ������ ����Ʈ
 $ : num [1:3] 1 2 3
 $ : chr "hello"

> id<-c(1,2,3,4,5,6,7,8,9,10)
> sex<-c("F","M","F","M","M","F","F","F","M","F")
> age<-c(50,40,28,50,27,23,56,47,20,38)
> area<-c("����","���","����","����","����","����","���","����","��õ","���")
> data_ex<-data.frame(id,sex,age,area)					#������������
> data_ex
   id sex age area
1   1   F  50 ����
2   2   M  40 ���
3   3   F  28 ����
4   4   M  50 ����
5   5   M  27 ����
6   6   F  23 ����
7   7   F  56 ���
8   8   F  47 ����
9   9   M  20 ��õ
10 10   F  38 ���



											#if���ǹ�#
> a<-8
> a
[1] 8
> if(a%%2==0){result<-"¦��"}							#if(2�� ������ �� �������� 0�̸�){¦�� ���}
> result
[1] "¦��"

> a<-123
> if(a%%2==0){result<-"¦��"}else{result<-"Ȧ��"}				
> result
[1] "Ȧ��"

> a<-75
> if(a%%3==0 && a%%5==0){							#�߰�ȣ ���ۺκ��� �������� ������� ��������
+ result<-"3�� ����̸鼭 5�� ���"}else if(a%%3==0){
+ result<-"3�� ���"}else if(a%%5==0){					#else if: ��ø if��
+ result<-"5�� ���"}
> result
[1] "3�� ����̸鼭 5�� ���"

> a<-121
> if(a%%3==0 && a%%5==0){
+ result<-"3�� ����̸鼭 5�� ���"}else if(a%%3==0){
+ result<-"3�� ���"}else if(a%%5==0){
+ result<-"5�� ���"}else {
+ result<-"3�� ���, 5�� ��� ��𿡵� �ش���� �ʽ��ϴ�."}
> result
[1] "3�� ���, 5�� ��� ��𿡵� �ش���� �ʽ��ϴ�."


> a<-c(10,13,7,8,100)
> if(a%%2==0){result<-"¦��"}else{result<-"Ȧ��"}				#if-> ������ �������� �� ���Ұ�(�ϳ��� ������ ��� ����)-> ������ ���� ���� ���� ifelse ���
����޽���(��): 
In if (a%%2 == 0) { :
  length > 1 �̶�� ������ �ְ�, ù��° ��Ҹ��� ���� 

											#ifelse: ������ ���� �������϶� ���(excel�� if�� ����)#
> ifelse(a%%2==0,"¦��","Ȧ��")							#ifelse(���Ǵ��, ���϶� ���๮��, �����϶� ���๮��)
[1] "¦��" "Ȧ��" "Ȧ��" "¦��" "¦��"
> result<-c(ifelse(a%%2==0,"¦��","Ȧ��"))					#������� result�� ����
> df<-data.frame(��=a,���=result)						#������� ������ �������������� ����
> df
   �� ���
1  10 ¦��
2  13 Ȧ��
3   7 Ȧ��
4   8 ¦��
5 100 ¦��

> a<-c(10,13,17,18,20)								#ifelse������ ��ø-> ifelse(����, ���϶�, ifelse(����, ���϶�, �����϶�))
> ifelse(a>mean(a),"����ʰ�",ifelse(a<mean(a),"��չ̴�","��հ�"))	#mean(a):a ��ҵ��� ���
[1] "��չ̴�" "��չ̴�" "����ʰ�" "����ʰ�" "����ʰ�"			
> result<-c(ifelse(a>mean(a),"����ʰ�",ifelse(a<mean(a),"��չ̴�","��հ�")))
> df2<-data.frame(a,result)
> df2
   a   result
1 10 ��չ̴�
2 13 ��չ̴�
3 17 ����ʰ�
4 18 ����ʰ�
5 20 ����ʰ�


> a<-c(23,13,5,17,85)								#�Լ��� ���#
> mean(a)										#a�� ���
[1] 28.6
> sd(a)										#a�� ǥ������
[1] 32.19938
> sort(a)										#������������ ����
[1]  5 13 17 23 85
> sort(a,TRUE)									#������������ ����(TRUE�� ���ؼ�)
[1] 85 23 17 13  5
> rev(a)										#a�� ���� �����͸� �������� ���
[1] 85 17  5 13 23

> a1<-c(2.34,3.1,4.3,2.98)
> b1<-c(2.4,3.09,4.3,3.1)
> cor(a1,b1)
[1] 0.9978118									#�������� 1�� �����->�� ������ ������迡 �ִ�



											#apply �迭�Լ�#
> height<-c(177,180,167,165,170,NA)						#������ ����
> weight<-c(NA,77.3,80,60,NA,64)
> df<-data.frame(����=height,ü��=weight)					#���͸� ���������������� ��ȯ
> df
  ���� ü��
1  177   NA
2  180 77.3
3  167 80.0
4  165 60.0
5  170   NA
6   NA 64.0
											#apply(���ü, ��(1) �Ǵ� ��(2), ������ �Լ�)
> apply(df,2,mean)								#���������� ��ճ���
���� ü�� 
  NA   NA 										#������ �� ���� NA ������ �Լ� ����ȵ�
> apply(df,2,mean,na.rm=TRUE)							#NA�� �����ϰ� �Լ� ����
   ����    ü�� 
171.800  70.325 

											#lapply����� ����Ʈ ���·� ��ȯ
> lapply(df,2,max,na.rm=TRUE)							#�� �������� �ִ밪
$����											
[1] 180

$ü��
[1] 80

> sapply(df,max,na.rm=TRUE)							#����� ���� ���·� ��ȯ
���� ü�� 
 180   80 
> df3<-sapply(df,max,na.rm=TRUE)
> is.vector(df3)									#df3�� �������� Ȯ��
[1] TRUE

> d<-matrix(1:9, ncol=3)
> d
     [,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9
> apply(d,1,sum)									#�� �������� ���� ��
[1] 12 15 18
> apply(d,2,sum)									#�� �������� ���� ��
[1]  6 15 24



> iris										#r�� �⺻���� ����� ������
    Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
1            5.1         3.5          1.4         0.2     setosa
2            4.9         3.0          1.4         0.2     setosa
> View(iris)									#ǥ ���·� Ȯ��
> View(cars)

> head(iris)									#�տ������� 6���� ��(�⺻) ���
> head(iris,10)									#�տ������� 10���� �� ���
> tail(iris,10)									#�ڿ������� 6���� �� ���
> dim(iris)										#�����Ͱ� �� ��, �� ������
[1] 150   5
> str(iris)										#�������� �Ӽ� Ȯ��
'data.frame':   150 obs. of  5 variables:					#��������, ���, ����
 $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
 $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
> summary(iris)									#���ʿ����跮
  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   	#�ּ�, �ִ�, �߰��� ���
 Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100 


> apply(iris[, 1:4],2,sum)							#������ �հ�-> ���� ��������, ���� 1:4��������
Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
       876.5        458.6        563.7        179.9 
> colSums(iris[, 1:4])								#������ �հ�
Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
       876.5        458.6        563.7        179.9 
> colMeans(iris[, 1:4])								#������ ���
Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
    5.843333     3.057333     3.758000     1.199333 


> dflist<-read.table("c:\\r1\\passlist.txt",head=TRUE)		#head=TRUE: ù ���� �Ӹ������� ǥ��
> dflist
   ���� ���� ����
1    33   �� 4.30
2    28   �� 4.20
											#tapply(����, �ε���, ����� �Լ�): �����͸� �׷����� ���� ��, �Լ��� ����#
> tapply(dflist$����,dflist$����,mean)					#������ �׷����� ��� ������ ��ճ���
      ��       �� 
4.181429 4.163846 					
> tapply(dflist$����,dflist$����,mean)					#������ �׷����� ��� ������ ��ճ���
      ��       �� 
31.28571 31.15385 

> a<-tapply(dflist$����,dflist$����,mean,simplify=FALSE)		#simplify=FALSE: ����� ����Ʈ ���·� ��ȯ
> a
 [1] 1 1 2 2 1 2 2 1 2 2 2 1 2 2 1 2 2 1 2 2



> install.packages("readxl")							#���������� �ҷ������� readxl ��Ű���� ����ؾ���
> library(readxl)

> setwd("c:\\r1")									#�� ��ġ�� �ִ� ���� �ҷ���
> df_sb<-read_excel("subway.xlsx")						#subway.xlsx �������� �о����
> df_sb
# A tibble: 119 x 7
   `�� ��` ����         `1��`   `2��`   `3��`     �Ѱ� �����
   <chr>   <chr>        <dbl>   <dbl>   <dbl>    <dbl>  <dbl>
 1 1ȣ��   ���￪(1)  4126245 3661950 4145729 11933924 1325
> View(df_sb)
> names(df_sb)<-c("����","���̸�","1��","2��","3��","����ο�",		#names�� �̿��Ͽ� �������� ����
+ "������ο�")
> View(df_sb)


> df_exam<-read_excel("excel_exam.xlsx") 					#read_excel ���ɾ�-> �˾Ƽ� ù��° ���� �ʵ������ �ν�, �ι�° ����� �ҷ���
> df_exam
# A tibble: 20 x 5
      id class  math english science
   <dbl> <dbl> <dbl>   <dbl>   <dbl>
 1     1     1    50      98      50
 2     2     1    60      97      60
> View(df_exam)

> df_exam2<-read_excel("excel_exam.xlsx",sheet=3)			#sheet�ٲٱ�(�⺻�� 1)
> df_exam2
# A tibble: 20 x 3
    ���� ����   ����
   <dbl> <chr> <dbl>
 1    33 ��     4.3 


											#csv���� (������ �ٸ���) ������ ��Ű�� ��ġ �ʿ�X#
> df_exam3<-read.csv("csv_exam.csv")					#text����(�޸���)->read.table
> df_exam3										#csv����->read.csv
   id class math english science						#excel����->read_excel
1   1     1   50      98      50
> View(df_exam3)


> data<-read.csv('seoulpopulation.csv',header=TRUE)			#header=TRUE-> ù��° ���� �ʵ���̴�(�Ƚ��൵��)
> data
     ��ġ��   ����   ����
1    ���α�  80531  83291
2      �߱�  66755  67574
> data$��ġ��										#��ġ�� ���� ���� �ҷ�����
 [1] "���α�"   "�߱�"     "��걸"   "������"   "������"   "���빮��"	#������(Levels)���� ����
 [7] "�߶���"   "���ϱ�"   "���ϱ�"   "������"   "�����"   "����"
> data<-read.csv('seoulpopulation.csv',header=TRUE,			#stringsAsFactors=FALSE-> �������� �������� ���� �������� ������ �ʰ� ����
+ stringsAsFactors=FALSE)
> data
     ��ġ��   ����   ����
1    ���α�  80531  83291
2      �߱�  66755  67574


> df_midterm<-data.frame(english=c(90,80,60,70),
+ math=c(50,60,100,20),
+ class=c(1,1,2,2))
> df_midterm
  english math class
1      90   50     1
2      80   60     1
3      60  100     2
4      70   20     2

write.csv(df_midterm, file="df_midterm.csv")				#R���� �ۼ��� �����͸� csv���Ϸ� ����