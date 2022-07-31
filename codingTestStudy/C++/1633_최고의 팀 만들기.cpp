#include <iostream>
#include <algorithm>
using namespace std;

int player[1001][2];
int dp[1001][16][16];
int n;

int dfs(int idx, int white, int black) {
	if (white == 15 && black == 15) return 0;
	if (idx == n) return 0;
	if (dp[idx][white][black]) return dp[idx][white][black];
	int ans = 0;
	if (white < 15) {
		ans = dfs(idx + 1, white + 1, black) + player[idx][0];
	}
	if (black < 15) {
		ans = max(ans, dfs(idx + 1, white, black + 1) + player[idx][1]);
	}
	return dp[idx][white][black] = max(ans, dfs(idx + 1, white, black));
}


int main() {
	int index = 0;
	int w, b;

	while (cin >> w >> b) {
		player[index][0] = w;
		player[index++][1] = b;
	}
	n = index;
	cout << dfs(0, 0, 0) << '\n';
}
