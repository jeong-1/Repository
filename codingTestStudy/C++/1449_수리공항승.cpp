#include <iostream>
#include <algorithm>
using namespace std;

const int MAX = 1001;

int n, l;
int arr[MAX];
bool isTaped[MAX];

int main(void)

{
	cin >> n >> l;

	int result = 0;
	for (int i = 0; i < n; i++)
		cin >> arr[i];

	sort(arr, arr + n);

	for (int i = 0; i < n; i++)
		if (!isTaped[arr[i]]) {
			for (int j = arr[i]; j < arr[i] + l; j++)
				isTaped[j] = true;
			result++;
		}

	cout << result;
}
