from tkinter import *

window = Tk()

def myFunc():
    if var.get() == 1:
        label1.configure(text = "파이썬을 선택")
    elif var.get() == 2:
        label1.configure(text = "C++을 선택")
    else:
        label1.configure(text = "JAVA를 선택")

var = IntVar()
rb1 = Radoubutton(window, text = "파이썬", variable = var, value = 1, command = myFunc)
rb2 = Radoubutton(window, text = "C++", variable = var, value = 2, command = myFunc)
rb3 = Radoubutton(window, text = "JAVA", variable = var, value = 3, command = myFunc)

label1 = Label(window, text = "선택한 언어: ", fg = "red")

rb1.pack()
rb2.pack()
rb3.pack()
label1.pack()

window.mainloop()
