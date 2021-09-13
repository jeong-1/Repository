from tkinter import *
from tkinter import messagebox #메세지 창 띄우기

def clickRight(event):
    messagebox.showinfo("마우스", "마우스 오른쪽 버튼이 클릭됨.")

window = Tk()
window.bind("<Button-3>", clickRight)

window.mainloop()
