#include <iostream>
#include <string>
#include <cmath>
using namespace std;

int main() {
	string s;
	cin >> s;
	int size = s.size(), n;

	long long cnt = 0;	//범위 조심
	n = stoi(s);

	for (int i = 1; i < size; i++)
		cnt += i * 9 * pow(10, i - 1);
	cnt += (n - pow(10, size - 1) + 1) * size;

	cout << cnt % 1234567;
}
