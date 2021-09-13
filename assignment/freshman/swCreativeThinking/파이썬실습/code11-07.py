outFp = None
outStr = ""
fName = ""

fName = input("파일명을 입력해주세요: ")
outFp = open(fName, "w")

while True:
    outStr = input("내용입력: ")
    if outStr != "":
        outFp.writelines(outStr + "\n")
    else:
        break

outFp.close()
print("------정상적으로 파일에 씀------")
