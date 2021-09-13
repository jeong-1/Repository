from tkinter import *
window = Tk()

label1 = Label(window, text = "2020111404 이정은")
label2 = Label(window, text = "열심히 실습중", font = ("궁서체", 30), fg = "blue")
label3 = Label(window, text = "GUI 재미있어요.", bg = "magenta", width = 20,
               height = 5, anchor = SE)
#fg = for ground(글자색 지정), bg = back ground(배경색 지정),
#font = 글씨체&글자크기, anchor = 위치조정옵션, SE = south east

label1.pack()
label2.pack()
label3.pack()
#pack 함수를 써줘야 실제로 window 창에 장착이 되어 보이게 됨

window.mainloop()
