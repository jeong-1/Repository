from tkinter import *
from tkinter import messagebox

def myFunc():
    messagebox.showinfo("고양이 그림 버튼", "고양이가 귀엽죠?") #제목과 내용

window = Tk()
photo = PhotoImage(file = "C:\소창 파이썬\GIF/cat3.gif")
button1 = Button(window, image = photo, command = myFunc) #myFunc에 괄호 넣지x

button1.pack()

window.mainloop()
