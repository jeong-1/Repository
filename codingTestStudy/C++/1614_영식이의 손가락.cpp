#include <iostream>
using namespace std;

long long arr[6] = { 0,1,2,3,4,5 };

int main() {
	int finger;
	long long n;    //범위 주의
	cin >> finger;
	cin >> n;
	if (n != 0) {
		switch (finger)
		{
		case 1:
			arr[1] += n * 8;
			break;
		case 2:
			if (n % 2 == 0)
				arr[2] += n / 2 * 8;
			else
				arr[2] += (n - 1) / 2 * 8 + 6;
			break;
		case 3:
			arr[3] += n * 4;
			break;
		case 4:
			if (n % 2 == 0)
				arr[4] += n / 2 * 8;
			else
				arr[4] += (n - 1) / 2 * 8 + 2;
			break;
		case 5:
			arr[5] += n * 8;
			break;
		}
	}
	cout << arr[finger] - 1;
}
