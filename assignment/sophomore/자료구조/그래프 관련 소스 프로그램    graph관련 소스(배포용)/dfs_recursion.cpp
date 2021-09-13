#include <iostream>
using namespace std;

// 인접 리스트 이용한 그래프 구현 및 DFS 방문
// RECURSION


#define MAX_NODE 10

class Edge {
public :
	int NodeNum;
	Edge *link;

	Edge(int new_node) {
		NodeNum = new_node;
		link = NULL;
	}
};

class HeadNode {
public :
	char NodeName[10];
	Edge *EdgeList;

	HeadNode(char *nodeName) {
		strcpy_s(NodeName, nodeName);
		EdgeList = NULL;
	}

	void addEdge(int node_num) {
		Edge *new_edge = new Edge(node_num);
		new_edge->link = EdgeList;
		EdgeList = new_edge; 
	}

} *graph[MAX_NODE];


int visited[MAX_NODE] = { 0 };// 전체를 0으로 초기화


void MakeGraph() { 
	
	// Head Nodes
	graph[0] = new HeadNode("V1");
	graph[1] = new HeadNode("V2");
	graph[2] = new HeadNode("V3");
	graph[3] = new HeadNode("V4");
	graph[4] = new HeadNode("V5");
	graph[5] = new HeadNode("V6");
	graph[6] = new HeadNode("V7");
	graph[7] = new HeadNode("V8");
	
	
	// Edges
	graph[0]->addEdge(1);
	graph[0]->addEdge(2);
	graph[1]->addEdge(3);
	graph[1]->addEdge(4);
	graph[2]->addEdge(5);
	graph[2]->addEdge(6);
	graph[3]->addEdge(7);
	graph[4]->addEdge(7);
	graph[5]->addEdge(7);
	graph[6]->addEdge(7);

	graph[7]->addEdge(6);
	graph[7]->addEdge(5);
	graph[7]->addEdge(4);
	graph[7]->addEdge(3);
	graph[6]->addEdge(2);
	graph[5]->addEdge(2);
	graph[4]->addEdge(1);
	graph[3]->addEdge(1);
	graph[2]->addEdge(0);
	graph[1]->addEdge(0);

}

void PrintNode(int v) 
{
	cout << graph[v]->NodeName << endl;
}

void DFS(int root) 
{
	
}

void main()
{
	MakeGraph();
	//for(int i = 0; i < MAX_NODE; i++)
	//	visited[i] = 0;
		
	DFS(0); // 0번 노드부터 시작하여 모든 노드를 DFS로 방문	
}