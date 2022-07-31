#include <iostream>
#include <vector>
#include <algorithm>
#include<queue>
using namespace std;

vector<int> vec[1001];
bool visit[1001] = { false };//방문 판단 배열

//재귀함수 사용
void dfs(int node) {
	cout << node << " ";
	visit[node] = true;
	for (int nextNode : vec[node]) {
		if (!visit[nextNode])
			dfs(nextNode);
	}
}

//큐 사용
void bfs(int node) {
	queue<int> q;
	q.push(node);
	visit[node] = true;

	while (!q.empty()) {	//큐가 빌 때까지 반복
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
	//정점개수, 간선개수, 탐색시작정점
	int n, m, v;	
	cin >> n >> m >> v;
	
	int a, b;
	//인접리스트 형식으로 수치 삽입
	for (int i = 1; i <= m; i++) {	
		cin >> a >> b;
		vec[a].push_back(b);
		vec[b].push_back(a);
	}
	for (int i = 1; i <= n; i++)	//오름차순으로 정렬
		sort(vec[i].begin(),vec[i].end());

	dfs(v);
	cout << '\n';
	fill_n(visit, 1001, false);	//배열 초기화
	bfs(v);
}