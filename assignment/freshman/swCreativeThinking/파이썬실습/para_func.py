def para_func(*para):
    result = 0
    for num in para:
        result = result + num

    return result

hap = 0

hap = para_func(10,20)
print("매개변수가 2개인 함수 호출", hap)
hap = para_func(10,20,30)
print("매개변수가 3개인 함수 호출", hap)
hap = para_func(10,20,30,40)
print("매개변수가 4개인 함수 호출", hap)
hap = para_func(10,20,30,40,50,60,70,80)
print("매개변수가 8개인 함수 호출", hap)
