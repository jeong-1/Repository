#include <iostream>
using namespace std;

int map[101][101];
long long dp[101][101];	//dp[a][b]: (a, b)���� �� �� �ִ� ����� ��

int main() {
	int n;
	cin >> n;
	for (int i = 0; i < n; i++)
		for (int j = 0; j < n; j++)
			cin >> map[i][j];

	//������ �ؼ� ������ ���� dp�� +1�� ����. ������ �ؼ� map[a][b]�� �����ߴٸ� dp[a][b]�� +1. dp[a][b]�� == map[a][b]�� ��ģ Ƚ��
	int jump, down, right;
	dp[0][0] = 1;
	for (int i = 0; i < n; i++) {
		for (int j = 0; j < n; j++) {
			if (dp[i][j] == 0 || (i == n - 1 && j == n - 1))
				continue;
			jump = map[i][j];
			down = jump + i;
			right = jump + j;
			if (down<n)
				dp[down][j] += dp[i][j];
			if(right<n)
				dp[i][right] += dp[i][j];
		}
	}
	cout << dp[n - 1][n - 1];
}
