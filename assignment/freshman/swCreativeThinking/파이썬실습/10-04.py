from tkinter import *
window = Tk()

photo = PhotoImage(file = "C:\소창 파이썬\GIF/cat2.gif")
photo2 = PhotoImage(file = "C:\소창 파이썬\GIF/cat.gif")
label1 = Label(window, image = photo)
label2 = Label(window, image = photo2)

label1.pack(side = LEFT)
label2.pack()

window.mainloop()
