#include <iostream>
#include <cmath>
#include <algorithm>
using namespace std;

int arr[500000];

int main() {
	int n;
	long long sum = 0;
	cin >> n;
	for (int i = 0; i < n; i++)
		cin >> arr[i];
	sort(arr, arr + n);

	for (int i = 1; i <= n; i++) {
		sum += abs(i - arr[i - 1]);
	}
	cout << sum;
}
