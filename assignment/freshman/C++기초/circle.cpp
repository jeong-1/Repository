#include <iostream>
using namespace std;

int main()
{
	const double PI = 3.14159;

	double radius, area, circumference, square_area;

	cout << "���� �������� �Է��ϼ���: ";
	cin >> radius;

	area = PI * radius * radius;
	cout << "���� ����: " << area << endl;

	circumference = PI * 2 * radius;
	cout << "���� �ѷ�: " << circumference << endl;

	square_area = 4 * radius * radius;
	cout << "���� ���簢���� ����: " << square_area << endl;

	return 0;
}