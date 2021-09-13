#include <iostream>
using namespace std;

// ���� ����Ʈ �̿��� �׷��� ���� �� DFS �湮
// STACK �̿�


#define MAX_NODE 10
#define MAX_STACK_SIZE 100

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


class Stack {
public :
	int stack[MAX_STACK_SIZE];
	int top;

	Stack() { top = -1; }
	bool is_empty() { return (top == -1); }
	bool is_full() { return (top == MAX_STACK_SIZE -1 ); }

	void push(int data) {
		stack[++top] = data;
	}
	int pop() {
		return stack[top--];
	}
	
	void viewStack() {
		cout << "##### STACK STATUS ###############" << endl;
		for(int i = top; i >= 0; i--)
			cout << graph[i]->NodeName << endl;
	}
};

int visited[MAX_NODE] = { 0 };// ��ü�� 0���� �ʱ�ȭ

Stack MyStack;

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
		
	DFS(0); // 0�� ������ �����Ͽ� ��� ��带 DFS�� �湮	
}