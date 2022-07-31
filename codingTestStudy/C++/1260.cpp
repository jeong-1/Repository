#include <iostream>
#include <vector>
#include <algorithm>
#include<queue>
using namespace std;

vector<int> vec[1001];
bool visit[1001] = { false };//�湮 �Ǵ� �迭

//����Լ� ���
void dfs(int node) {
	cout << node << " ";
	visit[node] = true;
	for (int nextNode : vec[node]) {
		if (!visit[nextNode])
			dfs(nextNode);
	}
}

//ť ���
void bfs(int node) {
	queue<int> q;
	q.push(node);
	visit[node] = true;

	while (!q.empty()) {	//ť�� �� ������ �ݺ�
		node = q.front();
		cout << node << " ";
		q.pop();
		for (int nextNode : vec[node])
			if (!visit[nextNode]) {
				q.push(nextNode);
				visit[nextNode] = true;
			}
	}
}

int main() {
	//��������, ��������, Ž����������
	int n, m, v;	
	cin >> n >> m >> v;
	
	int a, b;
	//��������Ʈ �������� ��ġ ����
	for (int i = 1; i <= m; i++) {	
		cin >> a >> b;
		vec[a].push_back(b);
		vec[b].push_back(a);
	}
	for (int i = 1; i <= n; i++)	//������������ ����
		sort(vec[i].begin(),vec[i].end());

	dfs(v);
	cout << '\n';
	fill_n(visit, 1001, false);	//�迭 �ʱ�ȭ
	bfs(v);
}