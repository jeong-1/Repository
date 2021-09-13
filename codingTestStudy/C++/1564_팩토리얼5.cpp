#include <iostream>
#include <iomanip>
using namespace std;

long long sum = 1;

int main() {
	int n;
	cin >> n;

	for (int i = 1; i <= n; i++) {
		sum = sum * i;
		while (sum % 10 == 0)
			sum /= 10;
		sum %= 1000000000000;
	}
	sum %= 100000;
	cout << setw(5) << setfill('0') << sum;
}
