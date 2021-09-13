import random
answer = random.randint(1,100)

while True:
    number = int(input("1부터 100사이의 숫자를 맞춰보세요: "))
    if answer == number:
        print("정답!")
        break
    elif answer > number:
        print("너무 작아요")
        continue
    else:
        print("너무 커요")
        continue
