start = '가나다'
print("""끝말잇기 게임
시작
"""+str(start))

while True:
    answer = input("단어: ")
    if answer[0] == start[-1]:
        start = answer
    else:
        print("땡")
        break
