from tkinter import *
import random

#randomList에 가위,바위,보 이미지 넣어놓기
randomList = ["C:\소창 파이썬\GIF/가위_big.gif","C:\소창 파이썬\GIF/바위_big.gif","C:\소창 파이썬\GIF/보_big.gif"]

#변수 초기화
playerChoice = 0
computerChoice = 0
lose = 0
win = 0

#게임의 승패에 따라서 각각의 값(win,lose)을 증가시키고 상황에 따라 메세지를 띄움
#playerChoice는 항상 0
def game(a, b):
    global lose
    global win

    if a > b:   #사용자가 이겼을 때 win을 1만큼 증가시킴
        win += 1
        labelA.configure(text = "Computer:"+str(lose), fg = "blue")
        labelB.configure(text = "이겼습니다.")
        labelC.configure(text = "User:"+str(win), fg = "green")
    elif a < b: #컴퓨터가 이겼을 때 lose를 1만큼 증가시킴
        lose += 1
        labelA.configure(text = "Computer:"+str(lose), fg = "blue")
        labelB.configure(text = "졌습니다.")
        labelC.configure(text = "User:"+str(win), fg = "green")
    else:       #비겼을 때는 아무것도 증가시키지 않음
        labelA.configure(text = "Computer:"+str(lose), fg = "blue")
        labelB.configure(text = "비겼습니다.")
        labelC.configure(text = "User:"+str(win), fg = "green")

#가위바위보 실행 함수
def scissors():
    global playerChoice
    global computerChoice
    global lose
    global win

    randomChoice = random.choice(randomList)    #randomList에서 랜덤으로 이미지를 고름
    i = randomList.index(randomChoice)          #randomList에서 고른 이미지의 위치를 i에 반환

    #화면에 가위 이미지와 랜덤으로 고른 이미지를 띄움
    photoUser = PhotoImage(file = "C:\소창 파이썬\GIF/가위_big.gif")   
    photoComputer = PhotoImage(file = randomChoice)                 
    labelUser = Label(window, image = photoUser)                        
    labelComputer = Label(window, image = photoComputer)               
    labelUser.image = photoUser
    labelComputer.image = photoComputer
    labelComputer.place(x=0, y=200)    
    labelUser.place(x=200, y=200)

    #랜덤으로 고른 이미지에 따라서 값을 부여
    #랜덤 이미지가 사용자가 고른 이미지(=photoUser(여기서는 가위))를 이기면 값(result)에 1을 부여, 지면 -1을 부여, 비기면 0을 부여
    if i == 0:
        result = 0
    elif i == 1:
        result = 1
    else:
        result = -1

    #playerChoice와 result를 인수로 하여 game함수를 불러옴
    game(playerChoice, result)

#scissors함수와 형식 같음(값 조금 변환)
def rock():
    global playerChoice
    global computerChoice
    global lose
    global win
 
    randomChoice = random.choice(randomList)
    i = randomList.index(randomChoice)

    photoUser = PhotoImage(file = "C:\소창 파이썬\GIF/바위_big.gif")
    photoComputer = PhotoImage(file = randomChoice)
    labelUser = Label(window, image = photoUser)
    labelComputer = Label(window, image = photoComputer)
    labelUser.image = photoUser
    labelComputer.image = photoComputer
    labelComputer.place(x=0, y=200)    
    labelUser.place(x=200, y=200)

    if i == 0:
        result = -1
    elif i == 1:
        result = 0
    else:
        result = 1

    game(playerChoice, result)

#scissors함수와 형식 같음(값 조금 변환) 
def paper():
    global playerChoice
    global computerChoice
    global lose
    global win
 
    randomChoice = random.choice(randomList)
    i = randomList.index(randomChoice)

    photoUser = PhotoImage(file = "C:\소창 파이썬\GIF/보_big.gif")
    photoComputer = PhotoImage(file = randomChoice)
    labelUser = Label(window, image = photoUser)
    labelComputer = Label(window, image = photoComputer)
    labelUser.image = photoUser
    labelComputer.image = photoComputer
    labelComputer.place(x=0, y=200)    
    labelUser.place(x=200, y=200)

    if i == 0:
        result = 1
    elif i == 1:
        result = -1
    else:
        result = 0

    game(playerChoice, result)

#main코드
window = Tk()
window.geometry("400x500")

#처음 화면
label = Label(window, text = "***가위바위보 게임***")
label2 = Label(window, text = "버튼을 선택하세요!", font = 30, fg = "red")

labelA = Label(window, text = "Computer", fg = "blue")
labelB = Label(window, text = "결과")
labelC = Label(window, text = "User", fg = "green")

#가위,바위,보 이미지를 버튼에 넣기
photo1 = PhotoImage(file = "C:\소창 파이썬\GIF/가위.gif")
photo2 = PhotoImage(file = "C:\소창 파이썬\GIF/바위.gif")
photo3 = PhotoImage(file = "C:\소창 파이썬\GIF/보.gif")
#버튼을 누르면 command로 각각의 함수 실행
button1 = Button(window, image = photo1, command = scissors)
button2 = Button(window, image = photo2, command = rock)
button3 = Button(window, image = photo3, command = paper)

label.pack()
label2.pack()

#메세지 위치시키기
labelA.place(x=30, y=450)
labelB.place(x=175, y=450)
labelC.place(x=300, y=450)
#버튼 위치시키기
button1.place(x=70, y=50)
button2.place(x=170, y=50)
button3.place(x=270, y=50)

window.mainloop()
