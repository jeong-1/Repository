#include<iostream>
using namespace std;

class Node{
public:
	int data;
	Node* link;
};

Node* Head = NULL;	// 전역 변수로 선언

void insert_node_A(Node* pre, Node* new_node) {	// A의 경우는 특정한 리스트를 수정할 때 필요
	if (Head == NULL) {			// 공백리스트인 경우
		Head = new_node;
	}
	else if (pre == NULL) { 	// pre가 NULL이면 첫번째 노드로 삽입
		new_node->link = Head;
		Head = new_node;
	}
	else {						// pre 다음에 삽입
		new_node->link = pre->link;
		pre->link = new_node;
	}
}

void insert_node_B(Node* new_node) {	// B의 경우(순차적으로 출력)

	if (Head == NULL) {	// 공백리스트인 경우
		Head = new_node;
	}
	else {
		Node* list = Head;

		while (list->link != NULL)
			list = list->link;
		list->link = new_node;
	}
}

void insert_node_C(Node* new_node) {	// C의 경우
	new_node->link = Head;
	Head = new_node;
}

void delete_node(int x) {	// x값을 갖는 값을 연결리스트에서 삭제
	Node *list = Head;

	if (Head == NULL)  return; 	// 삭제할 것이 없음
	else if (Head->data == x) 	// 찾는 노드(삭제 노드)가 첫 노드인 경우 
	{     
		Head = Head->link;
		return;
	}
	else 						// 나머지 경우
	{
		while (list->link != NULL)
		{
			if (list->link->data == x)
			{
				list->link = list->link->link;
				return;
			}
			list = list->link;
		}
	}

}

void print_list() {
	for (Node* ptr = Head; ptr != NULL; ptr = ptr->link)	// ptr이 Head부터 NULL이 아닐 때까지 한 노드에서 다음 노드로 넘어감
		if (ptr->link == NULL) cout << ptr->data << endl;
		else cout << ptr->data << "-->";							// 항상 '->'연산자 앞의 포인터가 null인지 아닌지 확인해야한다.
}

void main(){
	Head = NULL;

	// 연결리스트 구성
	int data_number;
	cout << "전체 입력 데이터의 개수는? : ";
	cin >> data_number;

	for (int i = 0; i < data_number; i++)	// XX개의 ;데이터 입력
	{
		// 새로운 데이터를 차례로 입력 받음
		int i_data;
		cout << "새로운 값을 입력하시오(#" << i + 1 << ") : ";
		cin >> i_data;

		// 새로운 노드를 생성하여 내용을 수정
		Node* new_node = new Node;	// Node라는 객체를 동적으로 할당받음
		new_node->data = i_data;
		new_node->link = NULL;

		// 전체 연결리스트에 새로운 노드를 추가/삽입
		insert_node_C(new_node);
	}

	// 확인용으로 출력
	cout << "##구성된 연결리스트는 : ";
	print_list();

	// 연결리스트에서 노드 삭제 반복
	for (int i = 0; i < 3; i++) {
		int del_data;
		cout << "삭제할 노드의 값 : ";
		cin >> del_data;
		delete_node(del_data);	// 노드 삭제

		cout << "##삭제 후 연결리스트는 : ";
		print_list();
	}
}