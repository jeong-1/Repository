result = 0

print("i부터 n까지 합을 계산하면 얼마일까요?")
i = int(input("연산할 시작 수를 입력하세요: "))
n = int(input("연산할 끝 수를 입력하세요: "))
for x in range(i,n+1):
    result = result+x
print("합은",result,"입니다.")
