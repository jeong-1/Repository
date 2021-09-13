import random
menus = [(1,"영어->한글"),(2,"한글->영어"),(3,"종료")]
english_list = ['apple','banana','clock','cat','dog']
korean_list = ['사과','바나나','시계','고양이','개']

while True:
    for i, n in menus:
        print(i,n)
    c = int(input())

    if c == 1:
        i = len(english_list)
        n = random.randrange(i)
        eng_word = english_list[n]
        kor_word = input("영어 " + eng_word + "는 무슨 뜻인가요? ")
        if kor_word == korean_list[n]:
            print("정답입니다.", eng_word, "의 뜻은", kor_word, "입니다.")
            english_list.remove(eng_word)
            korean_list.remove(kor_word)
        else:
            print("틀렸습니다.")
    elif c == 2:
        i = len(korean_list)
        n = random.randrange(i)
        kor_word = korean_list[n]
        eng_word = input(kor_word + "는 영어로 무슨 뜻일까요? ")
        if eng_word == english_list[n]:
            print("정답입니다.", kor_word, "는 영어로", eng_word, "입니다.")
            del(english_list[n])
            del(korean_list[n])
        else:
            print("틀렸습니다.")
    elif c == 3:
        break

    if len(english_list)<1:
        print("모든 단어를 다 맞추셨습니다. 단어장을 종료합니다.")
        break
