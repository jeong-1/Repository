import random
answer = random.randint(1,100)
i = answer_number = 0

while True:
    number = int(input("1부터 100사이의 숫자를 맞춰보세요: "))
    i = i+1
    if answer == number:
        print("정답!")
        print(i,"번 만에 맞추었습니다.")
        break
    elif answer > number:
        print("너무 작아요")
        continue
    else:
        print("너무 커요")
        continue
