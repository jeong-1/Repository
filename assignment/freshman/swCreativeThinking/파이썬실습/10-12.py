from tkinter import *
from time import *

fnameList = ["pic1.gif", "pic2.gif", "pic3.gif", "pic4.gif", "pic5.gif", "pic6.gif",
             "pic7.gif", "pic8.gif", "pic9.gif"]
photoList = [None] * 9
num = 0

#다음 버튼을 눌렀을 때 동작하는 함수
def clickNext():
    global num
    num = num + 1
    if num > 8:
        num = 0
    photo = PhotoImage(file = "C:\소창 파이썬\GIF/" + fnameList[num])
    pLabel.configure(image = photo)
    pLabel.image = photo
    pLabel2.configure(text = fnameList[num])

#이전 버튼을 눌렀을 때 동작하는 함수
def clickPrev():
    global num
    num = num - 1
    if num < 0:
        num = 8
    photo = PhotoImage(file = "C:\소창 파이썬\GIF/" + fnameList[num])
    pLabel.configure(image = photo)
    pLabel.image = photo
    pLabel2.configure(text = fnameList[num])

#main코드
window = Tk()
window.geometry("700x500")
window.title("2020111404 이정은 사진 앨범보기")

btnPrev = Button(window, text = " <<이전 ", command = clickPrev)
btnNext = Button(window, text = " 다음>> ", command = clickNext)

#처음 사진
photo = PhotoImage(file = "C:\소창 파이썬\GIF/" + fnameList[0])
pLabel = Label(window, image = photo)
pLabel2 = Label(window, text = fnameList[0])

btnPrev.place(x=250, y=10)
pLabel2.place(x=325, y=10)
btnNext.place(x=400, y=10)
pLabel.place(x= 250, y=50)

window.mainloop()
