print("끝말잇기 게임")
print("시작")
var = "강아지"
print(var)
while True:
    ans = input("단어:")
    if var[len(var)-1] == ans[0]:
        var = ans
    else:
        print("땡!!")
        break
