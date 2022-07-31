#include <iostream>
#include <string>
using namespace std;

int main() {
	string str, temp = "";
	int sum=0, sumInMinus=0;
	bool isMinus = false;
	
	cin >> str;

	for (int i = 0; i <= str.length(); i++) {
		if (str[i] == '+' || str[i] == '-' || str[i] == '\0') {	//연산자일 때
			if (isMinus)
				sum -= stoi(temp);
			else
				sum += stoi(temp);
			temp.clear();

			if(str[i] == '-')
				isMinus = true;	//괄호가 적용되기 시작
		}
		else	//피연산자일 때
			temp += str[i];
	}

	cout << sum;
}
