#include <iostream>
using namespace std;

int arr[2200][2200];
int ans[3];

bool check(int row, int col, int num) {
	int first = arr[row][col];
	for (int i = row; i < row + num; i++)
		for (int j = col; j < col + num; j++)
			if (arr[i][j] != first)
				return false;
	return true;
}

void divide(int row, int col, int num) {
	if (check(row, col, num))
		ans[arr[row][col] + 1]++;
	else {
		int newNum = num / 3;
		for (int i = 0; i < 3; i++)
			for (int j = 0; j < 3; j++)
				divide(row + newNum * i, col + newNum * j, newNum);
	}
}

int main() {
	ios_base::sync_with_stdio;
	cin.tie(0);
	cout.tie(0);
	int N;
	cin >> N;

	for (int i = 0; i < N; i++)
		for (int j = 0; j < N; j++)
			cin >> arr[i][j];
	divide(0, 0, N);
	for (int i = 0; i < 3; i++)
		cout << ans[i] << '\n';
}
