#include <iostream>
using namespace std;

int arr[10000];

int main() {
	int n;
	long long m;
	cin >> n >> m;
	for (int i = 0; i < n; i++)
		cin >> arr[i];

	int low = 0, high = 0, cnt = 0, sum = 0;
	while (low<=high && high <= n+1) {
		if (sum >= m) {
			if (sum == m)
				cnt++;
			sum -= arr[low++];
		}
		else {
			if (high == n + 1)
				break;
			sum += arr[high++];
		}
	}
	cout << cnt;
}
