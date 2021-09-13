#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
using namespace std;

bool comp(string a, string b) {
	if (a.length() != b.length())
		return a.length() < b.length();
	else
		return a < b;
}

int main() {
	int n, cnt;
	string s;
	string arr[51];

	cin >> n;
	cnt = n;
	for (int i = 0; i < n; i++)
		cin >> arr[i];

	sort(arr, arr + n, comp);

	for (int i = 0; i < n; i++) {
		for (int j = i + 1; j < n; j++) {
			if (arr[i] == arr[j].substr(0, arr[i].size())) {
				cnt--;
				break;
			}
		}
	}
	cout << cnt;
}
