#3주차 마지막 연습문제
p = int(input("원금: "))
i = float(input("이자율: "))
n = int(input("상환횟수: "))
m_i = i/12
m_n = n*12
m_r = p*(m_i*pow((1+m_i),m_n))/(pow((1+m_i),m_n)-1)
print("월 상환액은", m_r, "입니다.")

print("2의 4제곱은",pow(2,4),"입니다.")
