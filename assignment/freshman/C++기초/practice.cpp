#include <iostream>
using namespace std;

int main()
{
	//1�� The amount of money you can have.
	cout << "1. " << "Enter an amount in  double, for example 11.56: ";
	double amount;
	cin >> amount;

	int remainingAmount = static_cast<int>(amount * 100);

	int numberOfOneDollars = remainingAmount / 100;
	remainingAmount = remainingAmount % 100;

	int numberOfQuarters = remainingAmount / 25;
	remainingAmount = remainingAmount % 25;

	int numberOfDimes = remainingAmount / 10;
	remainingAmount = remainingAmount % 10;
	
	int numberOfNickels = remainingAmount / 5;
	remainingAmount = remainingAmount % 5;

	int numberOfPennies = remainingAmount;

	//��� ȭ�� ǥ��
	cout << "Your amount " << amount << " consists of " << endl;
	if (numberOfOneDollars == 1)
		cout << numberOfOneDollars << " dollar" << endl;
	else if (numberOfOneDollars > 1)
		cout << numberOfOneDollars << " dollars" << endl;
	else{}
	if (numberOfQuarters == 1)
		cout << numberOfQuarters << " quarter" << endl;
	else if (numberOfQuarters > 1)
		cout << numberOfQuarters << " quarters" << endl;
	else{}
	if (numberOfDimes == 1)
		cout << numberOfDimes << " dime" << endl;
	else if (numberOfDimes > 1)
		cout << numberOfDimes << " dimes" << endl;
	else{}
	if (numberOfNickels == 1)
		cout << numberOfNickels << " nickel" << endl;
	else if (numberOfNickels > 1)
		cout << numberOfNickels << " nickels" << endl;
	else{}
	if (numberOfPennies == 1)
		cout << numberOfPennies << " pennie" << endl;
	else if (numberOfPennies > 1)
		cout << numberOfPennies << " pennies" << endl;
	else{}




	//2�� minutes to years
	cout << "2. " << "Enter the number of minutes: ";
	unsigned int minutes, hours, days, remainderDays, years;
	cin >> minutes;

	hours = minutes / 60;
	days = hours / 24;
	years = days / 365;
	remainderDays = days % 365;

	cout << minutes << " minutes is approximately " << years << " years and " << remainderDays << " days" << endl;




	//3�� �� ������� �Է�
	double money, M, saving;
	cout << "3. " << "�� ������� �Է��ϼ���: ";
	cin >> money;

	saving =  money * (1 + 0.00417);
	cout <<"1�� �� �ݾ�: $" << saving << endl;
	M = money + saving;
	saving = M * (1 + 0.00417);
	cout << "2�� �� �ݾ�: $" << saving << endl;
	M = money + saving;
	saving = M * (1 + 0.00417);
	cout << "3�� �� �ݾ�: $" << saving << endl;
	M = money + saving;
	saving = M * (1 + 0.00417);
	cout << "4�� �� �ݾ�: $" << saving << endl;
	M = money + saving;
	saving = M * (1 + 0.00417);
	cout << "5�� �� �ݾ�: $" << saving << endl;
	M = money + saving;
	saving = M * (1 + 0.00417);
	cout <<"6�� �� �ݾ�: $" << saving << endl;
	
	return 0;
}
