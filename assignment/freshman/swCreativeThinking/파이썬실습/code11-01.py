inFp = None
inStr = ""

inFp = open("C:\소창 파이썬/data1.txt")

inStr = inFp.readline()
print(inStr, end="")

inStr = inFp.readline()
print(inStr, end="")

inStr = inFp.readline()
print(inStr, end="")

inFp.close()
