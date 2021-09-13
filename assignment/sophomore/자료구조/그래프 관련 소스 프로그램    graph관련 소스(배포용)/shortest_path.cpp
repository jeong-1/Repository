#include <iostream>
using namespace std;

const int NODE_NUMBER = 7;
int weight[NODE_NUMBER][NODE_NUMBER] = 
	{ 0,	7,	999,	999,	3,		10,		999,
	  7,	0,	4,		10,		2,		6,		999,
	  999,	4,	0,		2,		999,	999,	999,
	  999,	10, 2,		0,		11,		9,		4, 
	  3,	2,	999,	11,		0,		999,	5,
	  10,	6,	999,	9,		999,	0,		999,
	  999,	999,999,	4,		5,		999,	0};


int Distance[NODE_NUMBER];
int S[NODE_NUMBER] = { 0 }; // 모두 0으로 초기화
int P[NODE_NUMBER]; 

int choose_best_one() {
	int min_distance = 999;
	int min = 0;

	for(int i = 0; i < NODE_NUMBER; i++)
	{

		// S[i]가 0인 노드 중, Distance 값이 최소인 노드를 return
		

	}
	return min;
}

void shortest_path(int v) {
	for(int i = 0; i < NODE_NUMBER; i++) {
		Distance[i] = weight[v][i];
	}

	S[v] = 1;
	Distance[v] = 0;

	for(int i = 0; i < NODE_NUMBER - 2; i++)
	{		

	}
}

void main()
{
	int s = 0; // 시작 노드

	shortest_path(s);

	for(int i = 0; i < NODE_NUMBER; i++)
		cout << "노드 0에서 노드 " << i << "까지의 최단거리는 " << Distance[i] << endl;

	
}