from tkinter import *
from tkinter import messagebox

window = Tk()

def myFunc():
    if chk.get() == 0:
        messagebox.showinfo("2020111404 이정은", "체크버튼이 꺼졌어요.")
        #messagebox.showinfo --> 메시지 창 띄우기
    else:
        messagebox.showinfo("2020111404 이정은", "체크버튼이 켜졌어요.")


chk = IntVar() #integer형 변수선언
cb1 = Checkbutton(window, text = "클릭하세요.", variable = chk, command = myFunc)

cb1.pack()

window.mainloop()
