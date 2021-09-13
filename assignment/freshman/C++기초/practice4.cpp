#include <iostream>
#include <cstdlib>
#include <string>
#include <ctime>
using namespace std;

int main()
{
	//과제 1번 The coordinates of five points on the pentagon
	double radius;
	double PI = 3.14159;
	cout << "Enter the radius of the bounding circle: ";
	cin >> radius;

	cout << "The coordinates of five points on the pentagon are " << endl
		<< "(" << radius * cos((PI / 2) - (2 * PI / 5)) << ", " << radius * sin((PI / 2) - (2 * PI / 5)) << ")" << endl
		<< "(" << radius * cos((PI / 2) - (2 * PI / 5) + (2 * PI / 5)) << ", " << radius * sin((PI / 2) - (2 * PI / 5) + (2 * PI / 5)) << ")" << endl
		<< "(" << radius * cos((PI / 2) - (2 * PI / 5) + (4 * PI / 5)) << ", " << radius * sin((PI / 2) - (2 * PI / 5) + (4 * PI / 5)) << ")" << endl
		<< "(" << radius * cos((PI / 2) - (2 * PI / 5) + (6 * PI / 5)) << ", " << radius * sin((PI / 2) - (2 * PI / 5) + (6 * PI / 5)) << ")" << endl
		<< "(" << radius * cos((PI / 2) - (2 * PI / 5) + (8 * PI / 5)) << ", " << radius * sin((PI / 2) - (2 * PI / 5) + (8 * PI / 5)) << ")" << endl;
	cout << "" << endl;
	




	//과제 2번 change alphabet
	srand(time(0));
	string message = "";
	message = static_cast<char>('A' + rand() % ('Z' - 'A' + 1));
	string message2 = "";
	message2 = static_cast<char>('A' + rand() % ('Z' - 'A' + 1));
	string message3 = "";
	message3 = static_cast<char>('A' + rand() % ('Z' - 'A' + 1));
	cout << message << " " << message2 << " " << message3 << endl;
	cout << "" << endl;





	//과제 3번 The security number
	string ssn;
	cout << "Enter a SSN: ";
	cin >> ssn;
	if ((ssn.length() == 11) && (isdigit(ssn[0])) && (isdigit(ssn[1])) && (isdigit(ssn[2])) && (ssn[3] == '-') && (isdigit(ssn[4])) && (isdigit(ssn[5])) 
		&& (ssn[6] == '-') && (isdigit(ssn[7])) && (isdigit(ssn[8])) && (isdigit(ssn[9])) && (isdigit(ssn[10])))
	{
		cout << ssn << " is a valid social security number" << endl;
	}
	else
	{
		cout << ssn << " is an invalid social security number" << endl;
	}
	
	return 0;
}