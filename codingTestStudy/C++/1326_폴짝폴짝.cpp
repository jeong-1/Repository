#include <iostream>
#include <queue>
using namespace std;

queue<int> q;
int n, a, b, jump[10001], ans, num = 0;
int cnt[10001];
bool  visited[10001] = { false, };
bool isEnd;

int main() {
	cin >> n;
	for (int i = 1; i <= n; i++)
		cin >> jump[i];
	cin >> a;
	cin >> b;

	q.push(a);
	visited[a] = true;

	while (!q.empty()) {
		if (q.front() == b) {
			ans = cnt[q.front()];
			isEnd = true;
			break;
		}
		int now = q.front();
		q.pop();
		num = cnt[q.front()];
		for (int i = 1; now + jump[now] * i <= n; i++) {
			int next = now + jump[now] * i;
			if (!visited[next]) {
				visited[next] = true;
				q.push(next);
				cnt[next] = num + 1;
			}
		}
		for (int i = 1; now - jump[now] * i >= 1; i++) {
			int next = now - jump[now] * i;
			if (!visited[next]) {
				visited[next] = true;
				q.push(next);
				cnt[next] = num + 1;
			}
		}
	}
	if (isEnd)
		cout << ans;
	else 
		cout << -1;
}
