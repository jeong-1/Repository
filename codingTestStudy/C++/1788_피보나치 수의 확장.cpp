#include <iostream>
#include <cstdlib>
using namespace std;

long long dp[1000001];

void fibo(int n) {
	dp[0] = 0;
	dp[1] = 1;
	for (int i = 2; i <= n; i++)
		dp[i] = (dp[i - 1] + dp[i - 2]) %1000000000;
}

int main() {
	int n;
	cin >> n;
	int num = abs(n);
	fibo(num);
	if (n == 0)
		cout << 0 << '\n' << dp[0];
	else if (n > 0)
		cout << 1 << '\n' << dp[n];
	else {
		if (num % 2 == 0)
			cout << -1 << '\n' << dp[num];
		else
			cout << 1 << '\n' << dp[num];
	}
}
