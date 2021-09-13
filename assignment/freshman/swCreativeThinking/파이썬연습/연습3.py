#거북이를 이용애 반복하여  n각형 그리기
import turtle
t = turtle.Turtle()

while True:
    n = input("정수를 입력하세요[종료는 q]: ")

    if n == 'q':
        break

    n1 = int(n)
    degree = 360/n1

    for i in range(n1):
        t.forward(100)
        t.left(degree)
