#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
using namespace std;

string arr[20];
vector<string> v;

int main() {
	int r, c;
	cin >> r >> c;
	for (int i = 0; i < r; i++)
		cin >> arr[i];

	int cnt = 0;
	string str = "";
	for (int row = 0; row < r; row++)
		for (int col = 0; col < c; col++) {
			if (arr[row][col] == '#') {
				if (!str.empty() && str.size() != 1)
					v.push_back(str);
				str.clear();
			}
			else if (col == c - 1) {
				str += arr[row][col];
				if (str.size() != 1)
					v.push_back(str);
				str.clear();
			}
			else
				str += arr[row][col];
		}

	for (int col = 0; col < c; col++)
		for (int row = 0; row < r; row++){
			if (arr[row][col] == '#') {
				if (!str.empty()&& str.size() != 1)
					v.push_back(str);
				str.clear();
			}
			else if (row == r - 1) {
				str += arr[row][col];
				if (str.size() != 1)
					v.push_back(str);
				str.clear();
			}
			else
				str += arr[row][col];
		}

	sort(v.begin(), v.end());
	cout << v.front();
}
