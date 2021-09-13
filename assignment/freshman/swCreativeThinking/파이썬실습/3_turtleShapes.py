import turtle
t = turtle.Turtle()
i = 0
n = int(input("정수를 입력하세요:"))
degree = 360/n

while i<n:
    t.forward(100)
    t.left(degree)
    i = i+1
