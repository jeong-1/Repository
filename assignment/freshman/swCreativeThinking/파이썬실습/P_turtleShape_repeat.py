import turtle
t = turtle.Turtle()

while True:
    i = 0
    n = int(input("정수를 입력하세요:"))
    if n==0:
        break
    degree = 360/n
    if n>=3 and n<=10:
        while i<n:        
            t.forward(100)
            t.left(degree)
            i = i+1
    else:
        print("3이상 10이하 정수만 입력하세요")
        
