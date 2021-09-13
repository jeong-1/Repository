#반복문 while&for
fact,i = 1,1
n = int(input("몇까지 숫자를 곱할까요?: "))

#while i<=n:
#    fact = fact * i
#    i = i+1

for i in range(1,n+1):
    fact = fact*i

print("총 곱한 값은는 %d" %fact)



#end=' '사용법 & \n으로 줄 띄어쓰기
for i in range(0,7,2):
    print(i, end=' ')
    print('\n')


#continue문
while True:
    value = input("정수를 입력하세요[종료는 q]: ")
    if value == 'q':
        break
    number = int(value)
    if number % 2 == 0:
        continue
    print(number,"제곱값은",number*number)
