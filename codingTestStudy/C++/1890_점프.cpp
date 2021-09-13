#include <iostream>
using namespace std;

int map[101][101];
long long dp[101][101];	//dp[a][b]: (a, b)까지 올 수 있는 경로의 수

int main() {
	int n;
	cin >> n;
	for (int i = 0; i < n; i++)
		for (int j = 0; j < n; j++)
			cin >> map[i][j];

	//점프를 해서 도착한 곳의 dp에 +1을 해줌. 점프를 해서 map[a][b]에 도착했다면 dp[a][b]에 +1. dp[a][b]값 == map[a][b]를 거친 횟수
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
