#include <iostream>
#include <algorithm>
#define MAX 100001
using namespace std;

int arr[MAX];

int main() {
	int n, temp;
	cin >> n;
	for (int i = 1; i <= n; i++) {
		arr[i] = i;
		for (int j = 1; j*j <= i; j++) {
			if (!(i - j * j))
				temp = 1;
			else
				temp = arr[i - j * j] + 1;
			arr[i] = min(arr[i], temp);
		}
	}
	cout << arr[n];
}
