#include <iostream>
#include <iomanip>
using namespace std;

int main()
{
	//과제 1번 Num tower
	cout << "Enter the number of lines: ";
	int numberOfLines;
	cin >> numberOfLines;

	for (int row = 1; row <= numberOfLines; row++)
	{
		for (int col = 1; col <= numberOfLines-row; col++)
			cout << "   ";
		for (int num = row; num >= 1; num--)
			cout << setw(3) << num;
		for (int num = 2; num <= row; num++)
			cout << setw(3) << num;
		cout << endl;
	}
	cout << endl;




	//과제 2번 The prime num
	const int NUMBER_OF_PRIMES_PER_LINE = 8;
	int count = 0;
	int number = 2;

	cout << "The prime numbers from 2 to 1000 are \n";

	while (number <= 1000)
	{
		bool isPrime = true;

		for (int divisor = 2; divisor <= number / 2; divisor++)
		{
			if (number % divisor == 0)
			{
				isPrime = false;
				break;
			}
		}

		if (isPrime)
		{
			count++;

			if (count % NUMBER_OF_PRIMES_PER_LINE == 0)
				cout << setw(5) << number << endl;
			else
				cout << setw(5) << number;
		}

		number++;
	}

	return 0;
}