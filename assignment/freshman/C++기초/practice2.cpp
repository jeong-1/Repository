#include <iostream>
using namespace std;

int main()
{
	//과제 1번 tax
	cout << "(0-single filer, 1-married jointly, "
		<< "or qualifying widow(er), " << endl
		<< "2-married separately, 3-head of household)" << endl
		<< "Enter the filing status: ";

	int status;
	cin >> status;

	cout << "Enter the taxable income: ";
	double income;
	cin >> income;

	double tax = 0;

	switch (status)
	{
	case 0:
		if (income <= 8350)
			tax = income * 0.10;
		else if (income <= 33950)
			tax = 8350 * 0.10 + (income - 8350)*0.15;
		else if (income <= 82250)
			tax = 8350 * 0.10 + (33950 - 8350)*0.15 + (income - 33950)*0.25;
		else if (income <= 171550)
			tax = 8350 * 0.10 + (33950 - 8350)*0.15 + (82250 - 33950)*0.25 + (income - 82250)*0.28;
		else if (income <= 372950)
			tax = 8350 * 0.10 + (33950 - 8350)*0.15 + (82250 - 33950)*0.25 + (171550 - 82250)*0.28 + (income - 171550)*0.33;
		else
			tax = tax = 8350 * 0.10 + (33950 - 8350)*0.15 + (82250 - 33950)*0.25 + (171550 - 82250)*0.28 + (372950 - 171550)*0.33 + (income - 372950)*0.35;
		break;
	case 1:
		if (income <= 16700)
			tax = income * 0.10;
		else if (income <= 67900)
			tax = 16700 * 0.10 + (income - 16700)*0.15;
		else if (income <= 137050)
			tax = 16700 * 0.10 + (67900 - 16700)*0.15 + (income - 67900)*0.25;
		else if (income <= 208850)
			tax = 16700 * 0.10 + (67900 - 16700)*0.15 + (137050 - 67900)*0.25 + (income - 137050)*0.28;
		else if (income <= 372950)
			tax = 16700 * 0.10 + (67900 - 16700)*0.15 + (137050 - 67900)*0.25 + (208850 - 137050)*0.28 + (income - 208850)*0.33;
		else
			tax = 16700 * 0.10 + (67900 - 16700)*0.15 + (137050 - 67900)*0.25 + (208850 - 137050)*0.28 + (372950 - 208850)*0.33 + (income - 372950)*0.35;
		break;
	case 2:
		if (income <= 8350)
			tax = income * 0.10;
		else if (income <= 33950)
			tax = 8350 * 0.10 + (income - 8350)*0.15;
		else if (income <= 68525)
			tax = 8350 * 0.10 + (33950 - 8350)*0.15 + (income - 33950)*0.25;
		else if (income <= 104425)
			tax = 8350 * 0.10 + (33950 - 8350)*0.15 + (68525 - 33950)*0.25 + (income - 68525)*0.28;
		else if (income <= 186475)
			tax = 8350 * 0.10 + (33950 - 8350)*0.15 + (68525 - 33950)*0.25 + (104425 - 68525)*0.28 + (income - 104425)*0.33;
		else
			tax = 8350 * 0.10 + (33950 - 8350)*0.15 + (68525 - 33950)*0.25 + (104425 - 68525)*0.28 + (186475 - 104425)*0.33 + (income - 186475)*0.35;
		break;
	case 3:
		if (income <= 11950)
			tax = income * 0.10;
		else if (income <= 45500)
			tax = 11950 * 0.10 + (income - 11950)*0.15;
		else if (income <= 117450)
			tax = 11950 * 0.10 + (45500 - 11950)*0.15 + (income - 45500)*0.25;
		else if (income <= 190200)
			tax = 11950 * 0.10 + (45500 - 11950)*0.15 + (117450 - 45500)*0.25 + (income - 117450)*0.28;
		else if (income <= 372950)
			tax = 11950 * 0.10 + (45500 - 11950)*0.15 + (117450 - 45500)*0.25 + (190200 - 117450)*0.28 + (income - 190200)*0.33;
		else
			tax = 11950 * 0.10 + (45500 - 11950)*0.15 + (117450 - 45500)*0.25 + (190200 - 117450)*0.28 + (372950 - 190200)*0.33 + (income - 372950)*0.35;
		break;
	default:
		cout << "Error: invalid status";
	}

	cout << "Tax is " << static_cast<int>(tax * 100) / 100.0 << endl;
	cout << endl;




	
	//과제 2번 The number of days
	int Year, Month;
	cout << "Enter Year: (e.g., 2012): ";
	cin >> Year;
	cout << "Enter Month: 1-12: ";
	cin >> Month;
	
	if ((Month % 2 == 1 && Month <= 7) || (Month % 2 == 0 && Month >= 8))
	{
		cout << Year << "년 " << Month << "월은 31일이다." << endl;
	}
	else if ((Month == 4 || Month == 6) || (Month % 2 == 1 && Month > 8))
	{
		cout << Year << "년 " << Month << "월은 30일이다." << endl;
	}
	
	//윤년 계산
	bool leapYear =
		(Year % 4 == 0 && Year % 100 != 0) || (Year % 400 == 0);
	
	if (leapYear && Month == 2)
	{
		cout << Year << "년 " << Month << "월은 29일이다." << endl;
	}
	else if (!(leapYear) && (Month == 2))
	{
		cout << Year << "년 " << Month << "월은 28일이다." << endl;
	}
	cout << endl;


	//과제 3번 What day is it today?
	int year, h, q, m, j, k;
	cout << "Enter year: (e.g., 2012): ";
	cin >> year;
	cout << "Enter month: 1-12: ";
	cin >> m;
	cout << "Enter the day of the month: 1-31: ";
	cin >> q;

	if (m == 1)
	{
		year -= 1;
		m = 13;
	}
	else if (m == 2)
	{
		year -= 1;
		m = 14;
	}

	j = year / 100;
	k = year % 100;

	//첼러의 공식
	h = (q + 26 * (m + 1) / 10 + k + k / 4 + j / 4 + 5 * j) % 7;

	switch (h)
	{
	case 0: cout << "Day of the week is Saturday" << endl; break;
	case 1: cout << "Day of the week is Sunday" << endl; break;
	case 2: cout << "Day of the week is Monday" << endl; break;
	case 3: cout << "Day of the week is Tuesday" << endl; break;
	case 4: cout << "Day of the week is Wednesday" << endl; break;
	case 5: cout << "Day of the week is Thursday" << endl; break;
	case 6: cout << "Day of the week is Friday" << endl; break;
	}

	return 0;
}