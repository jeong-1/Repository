#include <iostream>
#include <string>
#include <cmath>
using namespace std;

int main() {
	string s;
	cin >> s;
	int size = s.size(), ans = 0, n;
	n = stoi(s);

	for (int i = 1; i < size; i++)
		ans += i * 9 * pow(10, i - 1);
	ans += size * (n - pow(10, size - 1) + 1);

	cout << ans;
}
