#거북이로 n(3<=n<=10)각형 그리기
import turtle
t = turtle.Turtle()

while True:
    i = 0
    n = int(input("정수를 입력하세요:"))
    degree = 360/n
    while i<n:
        if n>=3 and n<=10:
            t.forward(100)
            t.left(degree)
            i = i+1
        else:
            print("3이상 10이하 정수만 입력하세요")
            break
        


#import turtle
#t = turtle.Turtle()

#while True:
#    i = 0
#    n = int(input("정수를 입력하세요: "))
#    degree = 360/n

#    if n<3 or n>10:
#        print("3이상 10이하의 정수만 입력하세요.")
#        continue

#    while i<n:
#        t.forward(100)
#        t.left(degree)
#        i = i+1
