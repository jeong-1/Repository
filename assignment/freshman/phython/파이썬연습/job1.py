import random

menus = [(1,'장래희망 추가'),(2,'결정하기'),(3,'직업 명단보기'),(4,'새로 입력하기'),(5,'종료'),(6,'특정 직업 삭제하기')]

job=[]

while True:
    #1. 화면에 메뉴 출력
    for i, n in menus:
        print(i,n)
    #2. 사용자에게 입력받기(메뉴 중 한가지 숫자 선택)
    c = int(input())
    #3. 사용자가 선택한 메뉴
    
    #3-1. 1을 입력했을때
    if c == 1:
        s = input("당신의 장래희망은? ")
        job.append(s)
    #3-2. 2를 입력했을때
    elif c == 2:
        print("당신은 미래에...",random.choice(job))
    #3-3. 3을 입력했을때
    elif c == 3:
        print(job)
    #3-4. 4를 입력했을때
    elif c == 4:
        job.clear()
    #3-5. 5를 입력했을때
    elif c == 5:
        break
    #3-6. 6을 입력했을때
    elif c == 6:
        s = input("지울 직업을 입력하세요. ")
        job.remove(s)
    #3-7. 1~6 이외의 다른수를 입력했을때
    else:
        print("메뉴를 보고 번호를 입력해주세요.")
