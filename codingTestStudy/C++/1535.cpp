#include <iostream>
#include <algorithm>
using namespace std;

int main() {
	int n, L[21], J[21];

	cin >> n;
	for (int i = 1; i <= n; i++)
		cin >> L[i];
	for (int i = 1; i <= n; i++)
		cin >> J[i];

	int dp[21][101];
	memset(dp, 0, sizeof(dp));

	for (int i = 1; i <= n; i++) {
		for (int j = 1; j <= 100; j++) {
			dp[i][j] = dp[i - 1][j];
			if (j - L[i] > 0) {
				dp[i][j] = max(dp[i][j], dp[i - 1][j - L[i]] + J[i]);
			}
		}
	}
	cout << dp[n][100];
}
