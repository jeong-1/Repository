#include <iostream>
#include <iomanip>
using namespace std;

int main() {
	int n, l, w, h;
	long double low = 0, high = 1000000000, mid;
	cin >> n >> l >> w >> h;

	for (int i = 0; i < 10000; i++) {
		mid = (low + high) / 2;
		if ((long long)(l / mid)*(long long)(w / mid)*(long long)(h / mid) < n)
			high = mid;
		else
			low = mid;
	}
	cout << fixed << setprecision(10) << low;
}
