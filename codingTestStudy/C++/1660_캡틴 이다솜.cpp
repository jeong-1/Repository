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

	int cannon = 0, sum = 0, num = 1; // num:������ ����

	// ���Ϳ� �� ���ü�� ���Ǵ� ������ �� ����
	for (int i = 1; i <= n; i++) {
		sum += i;
		cannon = cannon + sum;
		if (cannon > n) {
			num = i - 1;
			break;
		}
		v.push_back(cannon);
	}

	for (int i = 1; i <= n; i++) // �ڱ� �ڽ����� �ʱ�ȭ 
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
