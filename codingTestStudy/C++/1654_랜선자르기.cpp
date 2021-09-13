#include <iostream>
#include <algorithm>
using namespace std;

long long arr[10000];
long long high = 0, low = 1, mid, ans = 0;

int main() {
	int k, n;
	cin >> k >> n;
	for (int i = 0; i < k; i++) {
		cin >> arr[i];
		high = max(high, arr[i]);
	}

	while (low <= high) {
		mid = (high + low) / 2;
		int cnt = 0;

		for (int i = 0; i < k; i++)
			cnt += arr[i] / mid;
		if (cnt >= n) {
			low = mid + 1;
			if (ans < mid)
				ans = mid;
		}
		else
			high = mid - 1;
	}
	cout << ans;
}
