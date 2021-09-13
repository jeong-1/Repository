import random

color_list = ['파랑색','초록색','검정색','흰색','회색','빨강색','보라색','갈색','노랑색','주황색']
number_list = ['1','2','3','4','5','6','7','8','9','10']
right_answer = 0

print("만든이의 좋아하는 색 맞추기")
while True:
    n = random.randrange(len(color_list))
    value = color_list[n]
    i = number_list[n]
    num = input(str(value)+"은 제가 몇 번째로 좋아하는 색깔일까요?(1~10): ")
    if i == num:
        print("정답입니다. "+str(value)+"은 제가", i, "번째로 좋아하는 색깔입니다.")
        del(color_list[n])
        del(number_list[n])
        right_answer += 1
    else:
        print("틀렸습니다.")
        del(color_list[n])
        del(number_list[n])
    if len(color_list)<1:
        print("10문제 중 총", right_answer, "문제 맞추셨습니다. 종료합니다.")
        break
        
