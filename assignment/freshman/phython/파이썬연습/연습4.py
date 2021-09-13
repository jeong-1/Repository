import random
value = random.randint(1,100)
n = 0

while True:
    answer = int(input("1부터 100사이의 숫자를 맞춰보세요: "))
    n = n+1
    if answer == value:
        print("정답")
        print(str(n)+"번만에 맞추셨습니다.")
        break
    elif answer > value and answer < 101:
        print("너무 커요")
    elif answer < value and answer > 0:
        print("너무 작아요")
    else:
        ()
