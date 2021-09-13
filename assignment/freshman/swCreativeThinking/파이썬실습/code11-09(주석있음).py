#변수 선언 부분
inFp, outFp = None, None
inStr, outStr = "",""
inStr, outStr = "", ""
i = 0
secu = 0

#메인 코드 부분
secuYN = input("1.암호화 2.암호 해석 중 선택: ") #암호화인지 암호해독인지 입력받음
inFname = input("입력 파일명을 입력하세요: ")    #입력이 될 파일명 입력
outFname = input("출력 파일명을 입력하세요: ")   #출력이 될 파일명 입력

if secuYN == "1":                                #secuYN에 1이 입력되면
    secu = 100                                   #secu는 100
elif secuYN == "2":                              #2가 입력되면
    secu = -100                                  #secu는 -100

#입력받은 파일 열기(글자가 깨지지 않게 인코딩방법사용)
inFp = open(inFname, 'r', encoding = 'utf-8')   
outFp = open(outFname, 'w', encoding = 'utf-8') 

while True:                                     #inStr에 inFp파일의 내용을 읽어와 저장 반복
    inStr = inFp.readline()                     
    if not inStr:                               #더이상 읽어올게 없다면 멈춤
        break

    outStr = ""                                 #암호화할 결과를 저장할 변수
    for i in range(0,len(inStr)):               #i에 0부터 inStr의 길이까지 반복
        ch = inStr[i]                           
        chNum = ord(ch)                         #아스키코드로 변환
        chNum = chNum + secu                    #변환된 chNum에 100을 더하거나 100을 빼기
        ch2 = chr(chNum)                        #값을 다시 문자열로 변환
        outStr = outStr + ch2                   #결과값을 outStr에 대입

    outFp.write(outStr)                         #outFp파일에 outStr 내용을 출력해서 저장

#파일 닫기
outFp.close()
inFp.close()
print("%s --> %s 변환 완료"%(inFname, outFname))   #화면에 변환을 완료했다는 메시지 출력
