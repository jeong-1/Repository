#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

string arr[1000];

bool comp(string a, string b) {
	int sumA = 0, sumB = 0;
	if (a.length() != b.length())
		return a.length() < b.length();
	else {
		for(int i=0; i<a.size(); i++)
			if (48 <= a[i] && a[i] <= 57)
				sumA += (a[i] - 48);
		for (int i = 0; i < b.size(); i++)
			if (48 <= b[i] && b[i] <= 57)
				sumB += (b[i] - 48);
		
		if (sumA < sumB)
			return true;
		else if (sumA > sumB)
			return false;
		else {
			return a < b;
		}
	}
}

int main() {
	int n;
	cin >> n;

	for(int i=0; i<n; i++)
		cin >> arr[i];
	sort(arr, arr + n, comp);

	for (int i = 0; i < n; i++)
		cout << arr[i] << '\n';
}
