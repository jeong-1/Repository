#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

string arr[51];
string str;

int main() {
	int row, col;
	int len, maxLen = 1;
	cin >> row >> col;

	for (int i = 0; i < row; i++) {
		cin >> str;
		arr[i] = str;
	}

	if (row > col)
		len = col;
	else
		len = row;

	for (int i = 0; i < row; i++)
		for (int j = 0; j < col; j++)
			for (int n = 1; n < len; n++) {
				if (i + n < row && j + n < col && arr[i][j] == arr[i][j + n] && arr[i][j] == arr[i + n][j] && arr[i][j] == arr[i + n][j + n]) {
					maxLen = max(maxLen, n + 1);
				}
	}
	cout << maxLen * maxLen;
}
