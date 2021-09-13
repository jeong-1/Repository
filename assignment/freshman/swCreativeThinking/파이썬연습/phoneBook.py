contacts = {}

while True:
    name = input("(입력모드)이름을 입력하시오: ")
    if not name:
        break

    tel = input("전화번호를 입력하시오: ")
    contacts[name] = tel

while True:
    name = input("(검색모드)이름을 입력하시오: ")
    if not name:
        break

    if name in contacts:
        print(name, "의 전화번호는",contacts[name],"입니다.")
    else:
        print(name,"은 없습니다.")
while True:
    print("*****전화번호부*****")
    for name in contacts.keys():
        print(name, contacts[name])
    end = input()
    if not end:
        break
