from tkinter import *
from tkinter.filedialog import *
from tkinter.simpledialog import *

def func_open():
    filename = askopenfilename(parent = window, filetypes= (("GIF파일","*.gif"),
                                                            ("모든파일","*.*"),
                                                            ("JPG파일","*.jpg")))

    photo = PhotoImage(file = filename)
    pLabel.configure(image = photo)
    pLabel.image = photo

def func_exit():
    window.quit()    #윈도우창을 멈춤
    window.destroy() #윈도우창이 꺼짐

def func_zoom():
    value = askinteger("확대배수", "확대할 배수를 입력하세요. (2~4)",
                       minvalue = 2, maxvalue = 4)
    photo = pLabel.image
    photo = photo.zoom(value, value)
    pLabel.configure(image = photo)
    pLabel.image = photo

def func_zoomout():
    value = askinteger("축소배수", "축소할 배수를 입력하세요. (2~4)",
                        minvalue = 2, maxvalue = 4)
    photo = pLabel.image
    photo = photo.subsample(value, value)
    pLabel.configure(image = photo)
    pLabel.image = photo

window = Tk()
window.geometry("400x400")
window.title("명화 감상하기 2020111404 이정은")

photo = PhotoImage()
pLabel = Label(window, image = photo)
pLabel.pack(expand = 1, anchor = CENTER)

mainMenu = Menu(window)
window.config(menu = mainMenu)

fileMenu = Menu(mainMenu)
mainMenu.add_cascade(label = "파일", menu = fileMenu)
fileMenu.add_command(label = "GIF파일 열기", command = func_open)
fileMenu.add_separator()
fileMenu.add_command(label = "명화보기 종료", command = func_exit)

zoomMenu = Menu(mainMenu)
mainMenu.add_cascade(label = "이미지 효과", menu = zoomMenu)
zoomMenu.add_command(label = "이미지 확대", command = func_zoom)
zoomMenu.add_command(label = "이미지 축소", command = func_zoomout)

window.mainloop()
