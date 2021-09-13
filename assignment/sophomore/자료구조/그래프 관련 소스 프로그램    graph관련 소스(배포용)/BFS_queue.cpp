#include <iostream>
using namespace std;

// ���� ����Ʈ �̿��� �׷��� ���� �� BFS �湮
// QUEUE �̿�


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

class Node {
public:
	int data;
	Node *link;

	Node(int new_data) {
		data = new_data;
		link = NULL;
	}

};


class Queue {
public :
	Node *front;
	Node *rear;

	Queue() { front = rear = NULL; }
	bool is_empty() { return (front == NULL); }
	
	void enQueue(int data) {
		Node *newNode = new Node(data);

		if(front == NULL) {
			front = rear = newNode;
		}
		else {
			rear->link = newNode;
			rear = newNode;
		}
	}
	int deQueue() {
		if(is_empty()) return -1;
		else {
			int item = front->data;
			front = front->link;
			if(front == NULL) rear = NULL;
			return item;
		}
	}
	
};

int visited[MAX_NODE] = { 0 };// ��ü�� 0���� �ʱ�ȭ

Queue MyQ;

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

void BFS(int root) 
{
	MyQ.enQueue(root);

	while(!MyQ.is_empty()) {

		int v = MyQ.deQueue();

		if(visited[v] != 0) continue;
		else visited[v] = 1;

		PrintNode(v);

		for(Edge *w = graph[v]->EdgeList; w != NULL; w = w->link)
		{
				if(visited[w->NodeNum] == 0)
					MyQ.enQueue(w->NodeNum);
		}
	}
}

void main()
{
	MakeGraph();
	//for(int i = 0; i < MAX_NODE; i++)
	//	visited[i] = 0;
		
	BFS(0); // 0�� ������ �����Ͽ� ��� ��带 DFS�� �湮	
}