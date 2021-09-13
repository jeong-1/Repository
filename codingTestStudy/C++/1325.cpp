#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

vector<int> vec[10001];
bool visited[10001];	//�湮 �Ǵ� �迭
int hackingCNum = 0;	//��ŷ ������ ��ǻ�� ����

void dfs(int node) {
	visited[node] = true;

	for (int newNode : vec[node])
		if (!visited[newNode]) {
			hackingCNum++;
			dfs(newNode);
		}
}

int main() {
	vector<int> answer;
	int n, m, a, b, maxCN = 1;
	cin >> n >> m;

	for (int i = 0; i < m; i++) {
		cin >> a >> b;
		vec[b].push_back(a);
	}

	for (int i = 1; i <= n; i++) {
		fill_n(visited, sizeof(visited), false);	//�迭 �ʱ�ȭ
		hackingCNum = 0;
		dfs(i);

		if (hackingCNum > maxCN) {
			answer.clear();
			answer.push_back(i);
			maxCN = hackingCNum;
		}
		else if(hackingCNum == maxCN)
			answer.push_back(i);
	}

	for (int n : answer)
		cout << n << " ";
}