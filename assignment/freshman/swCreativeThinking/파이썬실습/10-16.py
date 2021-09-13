from tkinter import *
from tkinter import messagebox

def keyEvent(event):
    print(event.keycode)
    #event.keycode --> 키보드에서 눌린 값 반환(숫자)
    if event.keycode == 37:
        messagebox.showinfo("키보드 이벤트", "눌린 키:Shift + 왼쪽화살표")
    elif event.keycode == 38:
        messagebox.showinfo("키보드 이벤트", "눌린 키:Shift + 윗쪽화살표")
    elif event.keycode == 39:
        messagebox.showinfo("키보드 이벤트", "눌린 키:Shift + 오른쪽화살표")
    elif event.keycode == 40:
        messagebox.showinfo("키보드 이벤트", "눌린 키:Shift + 아래쪽화살표")


window = Tk()

window.bind("<Shift-Up>", keyEvent)
window.bind("<Shift-Down>", keyEvent)
window.bind("<Shift-Left>", keyEvent)
window.bind("<Shift-Right>", keyEvent)

window.mainloop()
