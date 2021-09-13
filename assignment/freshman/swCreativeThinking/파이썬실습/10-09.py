from tkinter import *
window = Tk()

button1 = Button(window, text = "버튼 1")
button2 = Button(window, text = "버튼 2")
button3 = Button(window, text = "버튼 3")

button1.pack(side=BOTTOM, fill = X, padx = 10, pady = 10, ipadx = 10, ipady = 10)
button2.pack(side=BOTTOM, fill = X, padx = 10, pady = 10, ipadx = 10, ipady = 10)
button3.pack(side=BOTTOM, fill = X, padx = 10, pady = 10, ipadx = 10, ipady = 10)
#BOTTOM -->아래에서부터 차곡차곡 쌓아짐
#fill -->폭조정, padx -->가로축에 여백설정, pady -->세로축에 여백설정
#ipadx/y -->버튼의 안쪽여백 설정

window.mainloop()
