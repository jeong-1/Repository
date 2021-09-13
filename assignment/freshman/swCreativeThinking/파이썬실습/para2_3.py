#함수 선언
def para2_func(v1,v2):
    result = 0
    result = v1 + v2
    return result

def para3_func(v1,v2,v3):
    result = 0
    result = v1 + v2 + v3
    return result

def para_func(v1,v2,v3=0):
    result = 0
    result = v1 + v2 +v3
    return result

#전역 변수 선언
hap = 0

#메인 코드
hap = para2_func(10,20)
print("매개변수가 2개인 함수 호출 결과", hap)
hap = para3_func(10,20,30)
print("매개변수가 3개인 함수 호출 결과", hap)
hap = para_func(10,20)
print("parafunc으로 매개변수가 2개인 함수 호출 결과", hap)
hap = para_func(10,20,30)
print("parafunc으로 매개변수가 3개인 함수 호출 결과", hap)
