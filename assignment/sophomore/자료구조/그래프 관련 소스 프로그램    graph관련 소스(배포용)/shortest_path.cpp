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
int S[NODE_NUMBER] = { 0 }; // ��� 0���� �ʱ�ȭ
int P[NODE_NUMBER]; 

int choose_best_one() {
	int min_distance = 999;
	int min = 0;

	for(int i = 0; i < NODE_NUMBER; i++)
	{

		// S[i]�� 0�� ��� ��, Distance ���� �ּ��� ��带 return
		

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
	int s = 0; // ���� ���

	shortest_path(s);

	for(int i = 0; i < NODE_NUMBER; i++)
		cout << "��� 0���� ��� " << i << "������ �ִܰŸ��� " << Distance[i] << endl;

	
}