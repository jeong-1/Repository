from tkinter import *
from tkinter import messagebox

def keyEvent(event):
    #event.keycode --> 키보드에서 눌린 값 반환(숫자)
    messagebox.showinfo("키보드 이벤트", "눌린 키:" + chr(event.keycode))
        
window = Tk()

window.bind("<Key>", keyEvent)

window.mainloop()
