#include <iostream>
#include <string>
using namespace std;

int main() {
	string str, temp = "";
	int val, sum = 0, sumInMinus = 0;
	bool isMinus = false;

	cin >> str;

	for (int i = 0; i < str.length(); i++) {
		if (str[i] == '+') {
			if (isMinus) {	//��ȣ ����
				sum -= stoi(temp);
				temp.clear();
			}
			else {
				sum += stoi(temp);
				temp.clear();
			}
		}
		else if (str[i] == '-') {
			if (isMinus) {	//��ȣ ����
				sum -= stoi(temp);
				temp.clear();
			}
			else {
				sum += stoi(temp);
				temp.clear();
			}
			isMinus = true;	//��ȣ�� ����Ǳ� ����
		}
		else	//�ǿ������� ��
			temp += str[i];
	}

	if (isMinus)
		sum -= stoi(temp);
	else
		sum += stoi(temp);

	cout << sum;
}
