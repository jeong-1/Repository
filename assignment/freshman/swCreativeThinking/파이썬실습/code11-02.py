inFp = None
inList = ""

inFp = open("C:\소창 파이썬/data1.txt","r")

inList = inFp.readlines()
for inStr in inList:
    print(inStr, end="")

inFp.close()
