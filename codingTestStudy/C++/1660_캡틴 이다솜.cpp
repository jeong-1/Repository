#include <iostream>
#include <vector>
#include <algorithm>
#define MAX 300000
using namespace std;

int dp[MAX + 1];
vector<int> v;

int main() {
	int n;
	cin >> n;

	int cannon = 0, sum = 0, num = 1; // num:벡터의 개수

	// 벡터에 한 사면체에 사용되는 대포알 수 저장
	for (int i = 1; i <= n; i++) {
		sum += i;
		cannon = cannon + sum;
		if (cannon > n) {
			num = i - 1;
			break;
		}
		v.push_back(cannon);
	}

	for (int i = 1; i <= n; i++) // 자기 자신으로 초기화 
		dp[i] = i;

	for (int i = 0; i < num; i++)
		dp[v[i]] = 1;
	
	for (int i = 2; i <= n; i++) {
		for (int j = num - 1; j >= 0; j--) {
			if(i > v[j])
				dp[i] = min(dp[i], dp[i - v[j]] + 1);
		}
	}
	cout << dp[n];
}
