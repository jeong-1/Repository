#include <iostream>
#include <iomanip>
#include <ctime>
#include <cstdlib>
using namespace std;

int main()
{
	//���� 1�� Partial sum(�Ҽ��� �Ʒ� 20�ڸ����� �����)
	double sum = 0;
	double i;
	cout << fixed << setprecision(20);

	for (i = 0.01; i <= 1.0; i = i + 0.01)
	{
		cout << "i = " << i << endl;
		sum += i;
		cout << "Partial sum = " << sum << endl;
	}

	cout << "" << endl;
	cout << "Finally, i = " << i << endl;
	cout << "The sum is " << sum << endl;
	cout << endl;
	cout << endl;




	//���� 2�� subtact
	int correctCount = 0;
	long startTime = time(0);
	char continueloop = 'Y';

	srand(time(0));

	while (continueloop == 'Y')
	{
		int number1 = rand() % 10;
		int number2 = rand() % 10;

		if (number1 < number2)
		{
			int temp = number1;
			number1 = number2;
			number2 = temp;
		}

		cout << "What is " << number1 << " - " << number2 << "? ";
		int answer;
		cin >> answer;

		if (number1 - number2 == answer)
		{
			cout << "You are correct!\n";
			correctCount++;
		}
		else
			cout << "Your answer is wrong.\n" << number1 << " - " << number2 << " should be " << (number1 - number2) << endl;

		cout << "Enter Y to continue and N to quit: ";
		cin >> continueloop;
	}

	long endTime = time(0);
	long testTime = endTime - startTime;

	cout << endl;
	cout << "Correct count is " << correctCount << "\nTest time is " << testTime << " seconds\n";
	cout << endl;
	cout << endl;





	//���� 3�� Kilograms&Pounds(�Ҽ��� 1�ڸ����� �����)
	int kilogram;
	double pound = 0;
	cout << fixed << setprecision(1);
	
	cout << "Kilograms" << setw(11) << "Pounds" << endl;
	for (kilogram = 1; kilogram < 200; kilogram++)
	{
		if (kilogram % 2 == 1)
		{
			pound = kilogram * 2.2;
			cout << left;
			cout << setw(14) << kilogram << pound << endl;
		}
	}

	return 0;
}