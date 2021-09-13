from tkinter import *
from tkinter import messagebox

def clickImage(event):
    messagebox.showinfo("마우스", "토끼에서 마우스가 클릭됨")

window = Tk()
window.geometry("400x400")

photo = PhotoImage(file = "C:\소창 파이썬\GIF/rabbit.gif") #그림 가져오기
label1 = Label(window, image = photo) #window창에 그림 띄우기

label1.bind("<Button>", clickImage) #그림에서만 이벤트 처리가 됨(다른 창에서는 x)

label1.pack(expand = 1, anchor = CENTER)
#그림 위치 조정

window.mainloop()
