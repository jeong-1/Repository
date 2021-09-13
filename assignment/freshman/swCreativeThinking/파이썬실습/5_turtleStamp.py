import turtle
import random
import math
#거북이 3마리 만들기
t1 = turtle.Turtle()
t2 = turtle.Turtle()
t3 = turtle.Turtle()
#거북이들 색깔 바꾸기
t1.color('red')
t2.color('blue')
t3.color('green')
#거북이들 모양 바꾸기
t1.shape('turtle')
t2.shape('turtle')
t3.shape('turtle')
#거북이가 지나가는 길에 선이 남지 않게 하기
t1.penup()
t2.penup()
t3.penup()
#거북이들의 시작 좌표 정하기
t1.goto(50,50)
t2.goto(0,0)
t3.goto(-50,-50)

while True:
    #거북이들의 움직임을 랜덤으로 결정
    angle = random.randint(0,360)
    dist  = random.randint(1,50)
    t1.left(angle)
    t1.forward(dist)

    angle = random.randint(0,360)
    dist  = random.randint(1,50)
    t2.left(angle)
    t2.forward(dist)

    angle = random.randint(0,360)
    dist  = random.randint(1,50)
    t3.left(angle)
    t3.forward(dist)

    #거북이들의 좌표 구하기
    t1x = t1.xcor()
    t1y = t1.ycor()

    t2x = t2.xcor()
    t2y = t2.ycor()

    t3x = t3.xcor()
    t3y = t3.ycor()

    #두 거북이 사이의 거리 구하기
    t1_t2_dist = math.sqrt(((t1x-t2x)*(t1x-t2x))+((t1y-t2y)*(t1y-t2y)))
    t2_t3_dist = math.sqrt(((t2x-t3x)*(t2x-t3x))+((t1y-t2y)*(t1y-t2y)))
    t1_t3_dist = math.sqrt(((t1x-t3x)*(t1x-t3x))+((t1y-t3y)*(t1y-t3y)))

    #일정거리 이상 가까워졌을 때 거북이들 자리에 도장 찍기
    if t1_t2_dist <30:
        t1.stamp()
        t2.stamp()

    if t2_t3_dist <30:
        t2.stamp()
        t3.stamp()
        
    if t1_t3_dist <30:
        t1.stamp()
        t3.stamp()
