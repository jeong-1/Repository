> var1 <--1:5					
> var1
[1] -1  0  1  2  3  4  5
> is.vector(var1)					#��������Ȯ��
[1] TRUE

> var1+2
[1] 1 2 3 4 5 6 7

> c<-as.character(var1)				#����ȯ
> c
[1] "-1" "0"  "1"  "2"  "3"  "4"  "5" 
> n<-as.numeric(var1)
> n
[1] -1  0  1  2  3  4  5

> var2<-c(1,5)					#c�� combine�� ����
> var2
[1] 1 5
> var2<-c(1:5)
> var2
[1] 1 2 3 4 5
> var3<-seq(1,5)
> var3
[1] 1 2 3 4 5

> (var3<-seq(1,5))				#�Ұ�ȣ�� ������ ��������ٷ����
[1] 1 2 3 4 5

> (var4<-seq(1,10,by=2))			#by=�ܰ谪(������)(�׳�2��� �����)
[1] 1 3 5 7 9					#10 ������ �������� ���
> (var5<-seq(1,10,by=3))
[1]  1  4  7 10

> var6<-c(1,2,3,c(1,2,3))			#���ʹ���ø�Ҽ�����
> var6						#����Ʈ�� �̿��ؼ��� ��ø ����
[1] 1 2 3 1 2 3

> var2+var3						#���ͳ��� ���갡��
[1]  2  4  6  8 10

> str1<-'a'						
> str2<-"text"
> str1+str2						#������ �����ʹ� ����Ұ���
Error in str1 + str2 : ���׿����ڿ� ��ġ�� �ƴ� �μ�



> coffee<-c(300,3000,4500,4500)						
> coffee
[1]   300 3000  4500  4500
> names(coffee)<-c("�Ƹ޸�ī��","����������","ī���ī","��")		#�����Ϳ� �̸��ο�, names(������)
> coffee
�Ƹ޸�ī�� ����������   ī���ī       �� 
       300      3000       4500       4500 

> View(coffee)									#ǥ�� Ȯ��

> acoffee<-c("�Ƹ޸�ī��","����������")
> bcoffee<-c("ī���","�������","������")
> coffeemenu<-c(acoffee,bcoffee)						#�κ��͸� ���� ���ο� ����
> coffeemenu
[1] "�Ƹ޸�ī��" "����������" "ī���"   "�������" "������"

> coffee[2]										#coffee�� �ι�° ��ҿ� ����(Ȯ��)
���������� 
      3000 
> coffee["ī���ī"]
ī���ī 
    4500 


> coffee[1]<-3000									#ù��° ��� 3000���� ����
> coffee
�Ƹ޸�ī�� ����������   ī���ī       �� 
      3000       3000       4500       4500 
> coffee[2:4]									#�ι�° ��Һ��� 4��° ��ұ����� ���
����������   ī���ī       �� 
      3000       4500       4500 
> coffee[-3]									#����° ��Ҹ� �����ϰ� ���
�Ƹ޸�ī�� ����������       �� 
      3000       3000       4500 
> coffee[c(1,3)]									#ù��°�� ����° ��Ҹ� ���, c�Լ� ���
�Ƹ޸�ī��   ī���ī 
      3000       4500 
> coffee[2]+500
���������� 
      3500 
> coffee+1000									#��� ��ҿ� +1000, �ѹ��� ��� ������� ��� coffee���� �ٲ��� ����
�Ƹ޸�ī�� ����������   ī���ī       �� 
      4000       4000       5500       5500 
> coffee
�Ƹ޸�ī�� ����������   ī���ī       �� 
      3000       3000       4500       4500 
> coffee<-coffee+1000								#������ ���� ���Ϳ� �Ҵ�
> coffee
�Ƹ޸�ī�� ����������   ī���ī       �� 
      4000       4000       5500       5500 



> ashop<-c("�Ƹ޸�ī��","īǪġ��","ī���ī")
> bshop<-c("�Ƹ޸�ī��","ī���ī","��īġ��")
> ushop<-union(ashop,bshop)							#������ ������, �ߺ��Ǵ� ��Ұ� ������ �ߺ��� �����ϰ� ���
> ushop
[1] "�Ƹ޸�ī��" "īǪġ��"   "ī���ī"   "��īġ��"  

> ishop<-intersect(ashop,bshop)						#������ ������
> ishop
[1] "�Ƹ޸�ī��" "ī���ī"

> sshop<-setdiff(ashop,bshop)							#������ ������
> sshop										#�տ� �ִ� ���Ϳ��� �ڿ��ִ� ���Ͱ��� ����
[1] "īǪġ��"									

> identical(ashop,bshop)			#identical: ���׸��� ������(����&����)��ġ�ϸ� true, �ƴϸ� false#
[1] FALSE

> cshop<-c("�Ƹ޸�ī��","ī���ī","īǪġ��","ī���ī")			
> identical(ashop,cshop)
[1] FALSE										#������Ҵ� ������ ������ �޶� false
> setequal(ashop,cshop)				#setequal: ������ �޶� ������Ұ� ������ true#
[1] TRUE



> vec1<-c(-1,0,1)									
> str(vec1)										#str:������ �Ӽ� Ȯ��
 num [1:3] -1 0 1									#��������, ��Ұ���, ������ ���
> length(vec1)									#length: ������ ���� Ȯ��
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

> remove(vec1)									#�����ͼ�Ʈ(���⼱ ����)����	
> rm(vec2)
> vec1
����: ��ü 'vec1'�� ã�� �� �����ϴ�
> vec2
����: ��ü 'vec2'�� ã�� �� �����ϴ�


											#����#
> pet<-factor(c("������","������","������"),					#���䰪(�ߺ�����)
+ c("������","������","ǳ����"))							#���Ⱚ(�ߺ��Ұ�), c���ڿ� ��ø�ؼ� ���
> pet
[1] ������ ������ ������
Levels: ������ ������ ǳ����							#���Ⱚ�� Levels�� ����

> nlevels(pet)									#levels�� �����ľ�
[1] 3
> levels(pet)[1]									#levels�� ù��°��
[1] "������"
> levels(pet)[3]
[1] "ǳ����"



> religion<-factor(c("õ�ֱ�","�⵶��","�⵶��","�ұ�","�ұ�","����"),
+ c("�⵶��","�ұ�"))
> religion
[1] <NA>   �⵶�� �⵶�� �ұ�   �ұ�   <NA>  					#���⿡ ���� �׸��� NA�� ó����
Levels: �⵶�� �ұ�

> religion<-factor(c("õ�ֱ�","�⵶��","�⵶��","�ұ�","�ұ�","����"))
> religion										#levels(���Ⱚ)�� ���������� ��������� levels�� ����
[1] õ�ֱ� �⵶�� �⵶�� �ұ�   �ұ�   ����  
Levels: �⵶�� ���� �ұ�	õ�ֱ�							

> table(religion)									#table �Լ�: ������� ���� �� �� �����ϴ°� Ȯ��
religion
�⵶��   ����   �ұ� õ�ֱ� 
     2      1      2      1 
> unclass(religion)								#unclass �Լ�: �ؽ�Ʈ�� �Ǿ��ִ� �����͸� �ܼ��� ���ڰ����� ����
[1] 4 1 1 3 3 2					
attr(,"levels")
[1] "�⵶��" "����"   "�ұ�"   "õ�ֱ�"						#�⵶��=1,����=2,�ұ�=3,õ�ֱ�=4



> width<-factor(c("18��","24��","24��","32��","33��","18��"))		#������ �ִ� �����͵�
> width										#ordered=FALSE�� �����Ǿ�����
[1] 18�� 24�� 24�� 32�� 33�� 18��
Levels: 18�� 24�� 32�� 33��
> width<-factor(c("18��","24��","24��","32��","33��","18��"),
+ ordered=TRUE)									#������ ������ǥ��
> width										#ordered=TRUE(������ �ڷḦ ���������� ����)
[1] 18�� 24�� 24�� 32�� 33�� 18��
Levels: 18�� < 24�� < 32�� < 33��



> vec<-c("yes","no","yes")							#���ں���
> fct<-factor(vec)								#���͸� ���������� ��ȯ
> fct
[1] yes no  yes
Levels: no yes

> length(fct)									#������ ���䰪�� ����(nlevels �ƴ�)
[1] 3
> mode(fct)										#������ ��: �׻� ��ġ��
[1] "numeric"
> levels(fct)									
[1] "no"  "yes"				
> nlevels(fct)									#���Ⱚ�� �� ������ Ȯ��
[1] 2

> vec2<-c("M","F","M","F","m")
> names(vec2)<-c("1st","2nd","3rd","4th","5th")
> vec2
1st 2nd 3rd 4th 5th 								#������ �̸�
"M" "F" "M" "F" "m" 

> fct2<-factor(vec2, levels=c("M","F"),					#���������� ����
+ labels=c("Male","Female"))							#labels�� �̿��Ͽ� levels�� �̸��� Male�� Female�� ����
> fct2
   1st    2nd    3rd    4th    5th 
  Male Female   Male Female   <NA> 						#levels(���Ⱚ)�� ���� m�� NA�� ǥ�õ�
Levels: Male Female

> length(fct2)									#������ ����
[1] 5
> mode(fct2)									#������ ��
[1] "numeric"									
> levels(fct2)
[1] "Male"   "Female"
> names(fct2)									#�� ������ �̸�
[1] "1st" "2nd" "3rd" "4th" "5th"


> vec3<-c("high","low","high","middle","middle")
> fct3<-factor(vec3)
> fct3<-factor(vec3,ordered=TRUE)						#ordered=TRUE�� ������ �ڷ� ǥ��
> fct3
[1] high   low    high   middle middle
Levels: high < low < middle							#������ �߸���
> fct3<-ordered(vec3,levels=c("low","middle","high"))			#ordered()�� ����� levels�� ������ ����
> fct3
[1] high   low    high   middle middle
Levels: low < middle < high

> length(fct3)
[1] 5
> mode(fct3)
[1] "numeric"
> levels(fct3)
[1] "low"    "middle" "high" 



> x<-c(25,33,32,37,27,38)							#������ ���ʹ� ���η�(�� ����) �迭�Ǿ� ����
> View(x)

											#���(2����)#
> age<-matrix(c(25,33,32,37,27,38),nrow=3)				#�� 3��(row=��, col=��)
> age											#����϶� ��� �� �� �ϳ��� �������
     [,1] [,2] 									#������ ��� �⺻������ ��(����)����
[1,]   25   37
[2,]   33   27
[3,]   32   38

> age<-matrix(c(25,33,32,37,27,38),ncol=3)				#�� 3��
> age
     [,1] [,2] [,3]
[1,]   25   32   27
[2,]   33   37   38

> age<-matrix(c(25,33,32,37,27,38),ncol=3,byrow=TRUE)			#byrow�� ����� ��(����)�������� �����͸� ����
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

> dimnames(info)<-list(c("1��","2��","3��","4��"),c("Ű","������"))	#�� ����� �̸��ο�(�� �̸� �켱)
> info										#list�̿� 
    Ű      ������
1�� "177cm" "68kg"
2�� "156cm" "57kg"
3�� "160cm" "48kg"
4�� "175cm" "60kg