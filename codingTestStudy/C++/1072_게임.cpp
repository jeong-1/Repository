#include <iostream>
using namespace std;

int main() {
	long long x, y;
	cin >> x >> y;
	
	int z = y * 100 / x;
	if (z >= 99) {
		cout << -1;
		return 0;
	}

	int low = 0, high = 1000000000;
	int mid, ans = -1;
	while (low <= high) {
		mid = (low + high) / 2;
		if (z >= (y + mid) * 100 / (x + mid)) {
			low = mid + 1;
			ans = mid + 1;
		}
		else
			high = mid - 1;
	}
	cout << ans;
}
