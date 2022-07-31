#������ �ľǿ� ���Ǵ� �Լ���#
#head(): ������ �պκ� ���(�⺻ 6��)
#tail(): ������ �޺κ� ���(�⺻ 6��)
#View(): ���â���� ������ Ȯ��
#dim(): ������ ���� ���
#str(): ������ �Ӽ� ���
#summary(): ��� ��跮 ���
#ls(): ���� �׸�(������)�� ����Ʈ�� ���

> install.packages("ggplot2")
> library(ggplot2)
> mpg									#mpg:ggplot2�� ����Ǿ�����
> str(mpg)								#mpg �Ӽ�Ȯ��
tibble [234 x 11] (S3: tbl_df/tbl/data.frame)
 $ manufacturer: chr [1:234] "audi" "audi" ...	
						
> mpg<-as.data.frame(ggplot2::mpg)				#ggplot2�� mpg �����͸� ������������ ���·� �ҷ�����
> str(mpg)
'data.frame':   234 obs. of  11 variables:
 $ manufacturer: chr  "audi" "audi" "audi" ...		#mpg�� ������Ÿ���� dataframe���� �ٲ�
> View(mpg)


> df<-data.frame(var1=c(4,3,8),var2=c(2,6,1))		#dataframe����
> df
  var1 var2
1    4    2
2    3    6
3    8    1
> df$var_sum<-df$var1+df$var2					#�Ļ�����(var_sum)�� ����� df�� �߰�->�����������Ӹ��� $�� �ٿ� ���ο� �������� �Է�
> df									
  var1 var2 var_sum						#�����������ӿ� ���ο� ���� ����� �۾�->�Ļ������� �����
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

> mpg2$total<-(mpg2$cty+mpg2$hwy)/2				#total(�ѿ���):���ÿ���� ���ӵ��ο����� ���
> head(mpg2)
> mean(mpg2$total)						#�ѿ������ ���
[1] 20.14957
> summary(mpg2$total)						#�ѿ������ ���
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  10.50   15.50   20.50   20.15   23.50   39.50 
> hist(mpg2$total)						#hist�� �̿��� ������׷� ����(������׷�:���� �󵵸� ���� ���̷� ǥ���� �׷���,�������� ���� ǥ������,����׷����ʹ� �ٸ�)


> ifelse(mpg2$total>=20,"pass","fail")
[1] "pass" "pass" "pass" "pass" "pass" "pass" "pass" "pass"
  [9] "pass" "pass" "pass" "pass" "pass" "pass" "pass" "fail"
> mpg2$test<-ifelse(mpg2$total>=20,"pass","fail")		#ifelse�� ���� mpg2$test�� ����	
> View(mpg2)
> table(mpg2$test)							#table�� �̿��� �����հݺ�ǥ ����, ��ǥ:������ ���� �� ���� �����ϴ��� ������ ��Ÿ�� ǥ
fail pass 
 106  128 
> qplot(mpg2$test)							#qplot�� �̿��� �����հݺ� ����׷��� ����(������׷��� �޸� ���������� ���� �� ǥ������)


> mpg2$grade<-ifelse(mpg2$total>=30,"A",ifelse(			#total�� 30�̻� A, 30�̸� 20�̻� B, 20�̸� C
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
> str(df2)									#�Ӽ� Ȯ��
> dim(df2)									#���, ���� Ȯ��
> ls(df2)									#�������� ������ Ȯ��

> df2$AMT<-df2$AMT16+df2$AMT17					#���ο� �Ļ����� ����
> View(df2)									#ǥ Ȯ��
> df2$CNT<-df$Y16_CNT+df$Y17_CNT					#���ο� �Ļ����� ����
> df2$AGE50<-ifelse(df$AGE>=50,"Y","N")				#���ο� �Ļ����� ����
> df2$AGE_GR<-ifelse(df2$AGE>=50,"50��",ifelse(			#���ο� �Ļ����� ����
+ df2$AGE>=40,"40��",ifelse(df2$AGE>=30,"30��",ifelse(
+ df2$AGE>=20,"20��","20��̸�"))))