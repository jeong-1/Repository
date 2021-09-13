#include <iostream>
#include <cmath>
#include <string>
using namespace std;

int main()
{
	//과제1 생일 맞추기
	int day = 0;
	char answer;

	cout << "Is your birthday in Set1?" << endl;
	cout << "1  3  5  7\n" <<
			"9 11 13 15\n" <<
			"17 19 21 23\n" <<
			"25 27 29 31" << endl;
	cout << "Enter N/n for No and Y/y for Yes: ";
	cin >> answer;

	if (answer == 'Y' || answer == 'y')
		day += 1;

	cout << "\nIs your birthday in Set2?" << endl;
	cout << "2  3  6  7\n" <<
			"10 11 14 15\n" <<
			"18 19 22 23\n" <<
			"26 27 30 31" << endl;
	cout << "Enter N/n for No and Y/y for Yes: ";
	cin >> answer;

	if (answer == 'Y' || answer == 'y')
		day += 2;

	cout << "\nIs your birthday in Set3?" << endl;
	cout << "4  5  6  7\n" <<
			"12 13 14 15\n" <<
			"20 21 22 23\n" <<
			"28 29 30 31" << endl;
	cout << "Enter N/n for No and Y/y for Yes: ";
	cin >> answer;

	if (answer == 'Y' || answer == 'y')
		day += 4;

	cout << "\nIs your birthday in Set4?" << endl;
	cout << "8  9  10 11\n" <<
			"12 13 14 15\n" <<
			"24 25 26 27\n" <<
			"28 29 30 31" << endl;
	cout << "Enter N/n for No and Y/y for Yes: ";
	cin >> answer;

	if (answer == 'Y' || answer == 'y')
		day += 8;

	cout << "\nIs your birthday in Set5?" << endl;
	cout << "16 17 18 19\n" <<
			"20 21 22 23\n" <<
			"24 25 26 27\n" <<
			"28 29 30 31" << endl;
	cout << "Enter N/n for No and Y/y for Yes: ";
	cin >> answer;

	if (answer == 'Y' || answer == 'y')
		day += 16;

	cout << "Your birthday is " << day << endl;
	cout << " " << endl;





	//과제2 오각형 면적 계산 (소수점 2째자리에서 반올림하는 조건은 무시해도 좋음)
	double PI = 3.14159;
	double r, s, degree, area;

	cout << "Enter the length from the center to a vertex: ";
	cin >> r;
	degree = 360 / 5 / 2;
	s = 2 * r * sin(degree * PI / 180);

	area = (5 * s * s) / (4 * tan(degree * PI / 180));

	cout << "The area of the pentagon is " << area << endl;
	cout << " " << endl;




	//과제3 10진수-> 16진수 변환
	int decimalValue;
	cout << "Enter a decimal value (0 to 15): ";
	cin >> decimalValue;

	if (decimalValue <= 15 && decimalValue >= 10)
	{
		string alphabet = "ABCDEF";
		char value = static_cast<char>(alphabet.at(decimalValue - 10));
		cout << "The hex value is " << value << endl;
	}
	else if (decimalValue < 10 && decimalValue >=0)
	{
		cout << "The hex value is " << decimalValue << endl;
	}
	else
	{
		cout << decimalValue << " " << "is an invalid input" << endl;
	}

	return 0;
}