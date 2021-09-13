#include <iostream>
using namespace std;

int main()
{
	const double PI = 3.14159;

	double radius, area, circumference, square_area;

	cout << "원의 반지름을 입력하세요: ";
	cin >> radius;

	area = PI * radius * radius;
	cout << "원의 면적: " << area << endl;

	circumference = PI * 2 * radius;
	cout << "원의 둘레: " << circumference << endl;

	square_area = 4 * radius * radius;
	cout << "외접 정사각형의 면적: " << square_area << endl;

	return 0;
}