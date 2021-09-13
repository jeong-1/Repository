from tkinter import *
from tkinter.filedialog import *

window = Tk()
window.geometry("400x100")

label1 = Label(window, text = "선택된 파일 이름")
label1.pack()

filename = askopenfilename(parent = window, filetypes = (("GIF파일", "*.gif"),
                                                        ("모든파일", "*.*")))
#askopenfilename-->마우스로 선택한 파일 이름 반환, ("파일이름.확장자")

label1.configure(text = str(filename))
#text에 넣으려고 정수를 문자열로 변환하는 str사용
window.mainloop()
