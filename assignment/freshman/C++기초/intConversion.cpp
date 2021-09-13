#include <iostream>
using namespace std;

int main()
{
	cout << "<문제 #1>" << endl;
	int num1, num2, num3;
	cout << "0과 9 사이의 정수 3개를 입력하세요: ";
	cin >> num1 >> num2 >> num3;
	cout << "3개의 수로 이루어진 십진수: " << num1*100 + num2*10 + num3 << endl;	//입력받은 3개의 정수로 세자리 수 만들기

	cout << "<문제 #2>" << endl;
	int num, remainder1, remainder2;
	cout << "1에서 1000 사이의 정수를 입력하세요: ";
	cin >> num;
	remainder1 = num % 100;															//num을 100으로 나눈 나머지
	remainder2 = remainder1 % 10;													//remainder1을 10으로 나눈 나머지
	cout << "각 자리 수의 합: " << num/100 + remainder1/10 + remainder2 << endl;	//각 자리 수의 숫자를 구해 모두 더하기

	cout << "<문제 #3>" << endl;
	int num4, remainder3, remainder4;
	cout << "0과 31 사이의 정수를 입력하세요: ";
	cin >> num;
	//입력받은 정수(0~31)를 2로 계속 나누기
	num1 = num / 2;
	num2 = num1 / 2;
	num3 = num2 / 2;
	num4 = num3 / 2;
	//입력받은 정수를 나눌 때마다 생기는 나머지 값
	remainder1 = num % 2;
	remainder2 = num1 % 2;
	remainder3 = num2 % 2;
	remainder4 = num3 % 2;
	cout << num4 << remainder4 << remainder3 << remainder2 << remainder1 << endl;	//마지막 몫과 나머지 값을 밑에서부터 나열

	return 0;
}