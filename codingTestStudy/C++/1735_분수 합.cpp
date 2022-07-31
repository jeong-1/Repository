#include <iostream>
using namespace std;

int main() {
	int a1, b1, a2, b2, a, b;
	cin >> a1 >> b1;
	cin >> a2 >> b2;

	b = b1 * b2;
	a = a1 * b2 + a2 * b1;

	int n = b, m = a, l;
	while (m) {
		l = n % m;
		n = m;
		m = l;
	}
	if (n == 1)
		cout << a << ' ' << b;
	else
		cout << a/n << ' ' << b/n;
}
