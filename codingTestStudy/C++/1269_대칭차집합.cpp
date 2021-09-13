#include <iostream>
#include <algorithm>
using namespace std;
#define MAX 200000

int arr1[MAX], arr2[MAX];

int main() {
	ios_base::sync_with_stdio(false);
	cin.tie(0);
	cout.tie(0);

	int a, b, cnt1 = 0, cnt2 = 0, ans=0;
	cin >> a >> b;
	for (int i = 0; i < a; i++)
		cin >> arr1[i];
	for (int i = 0; i < b; i++)
		cin >> arr2[i];

	sort(arr1, arr1 + a);
	sort(arr2, arr2 + b);
	while (cnt1 < a && cnt2 < b) {
		if (arr1[cnt1] == arr2[cnt2]) {
			ans++;
			cnt1++; cnt2++;
		}
		else if (arr1[cnt1] < arr2[cnt2])
			cnt1++;
		else
			cnt2++;
	}
		
	cout << (a + b) - ans * 2;
}
