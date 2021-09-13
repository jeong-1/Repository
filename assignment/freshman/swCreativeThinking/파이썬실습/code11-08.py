inFp, outFp = None, None
inStr, inList = "", []
srcName, trgName = "", ""

srcName = input("소스파일명을 입력하세요: ")
inFp = open(srcName, "r")
trgName = input("타겟파일명을 입력하세요: ")
outFp = open(trgName, "w")

inList = inFp.readlines()
for inStr in inList:
    outFp.writelines(inStr)

inFp.close()
outFp.close()
print("------%s이 %s로 정상적으로 복사되었습니다.------"%(srcName, trgName))
