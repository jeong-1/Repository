#include <iostream>
using namespace std;

int main()
{
	//1번 The amount of money you can have.
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

	//결과 화면 표시
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




	//2번 minutes to years
	cout << "2. " << "Enter the number of minutes: ";
	unsigned int minutes, hours, days, remainderDays, years;
	cin >> minutes;

	hours = minutes / 60;
	days = hours / 24;
	years = days / 365;
	remainderDays = days % 365;

	cout << minutes << " minutes is approximately " << years << " years and " << remainderDays << " days" << endl;




	//3번 월 저축액을 입력
	double money, M, saving;
	cout << "3. " << "월 저축액을 입력하세요: ";
	cin >> money;

	saving =  money * (1 + 0.00417);
	cout <<"1달 후 금액: $" << saving << endl;
	M = money + saving;
	saving = M * (1 + 0.00417);
	cout << "2달 후 금액: $" << saving << endl;
	M = money + saving;
	saving = M * (1 + 0.00417);
	cout << "3달 후 금액: $" << saving << endl;
	M = money + saving;
	saving = M * (1 + 0.00417);
	cout << "4달 후 금액: $" << saving << endl;
	M = money + saving;
	saving = M * (1 + 0.00417);
	cout << "5달 후 금액: $" << saving << endl;
	M = money + saving;
	saving = M * (1 + 0.00417);
	cout <<"6달 후 금액: $" << saving << endl;
	
	return 0;
}
