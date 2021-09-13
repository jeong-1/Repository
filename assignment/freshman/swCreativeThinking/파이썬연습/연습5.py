print("i부터 n까지 합을 계산하면 얼마일까요?")
i = int(input("연산할 시작 수를 입력하세요: "))
n = int(input("연산할 시작 수를 입력하세요: "))
hap = 0

while i <= n:
    hap = hap + i
    i = i+1

print("합은 %d입니다" %hap)

