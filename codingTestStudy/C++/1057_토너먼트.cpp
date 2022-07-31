#include <iostream>
using namespace std;

int n, p1, p2, cnt = 1;

int main() {
	cin >> n >> p1 >> p2;

	while (true) {
		if ((p1 + 1) / 2 == (p2 + 1) / 2)
			break;

		p1 = (p1 + 1) / 2;
		p2 = (p2 + 1) / 2;
		cnt++;
	}
	cout << cnt;
}
