#include<iostream>
using namespace std;

class CNode{
public:
	int data;
	CNode* link;
};

CNode* Head = NULL;	// 전역 변수로 선언

void insert_node_A(CNode* pre, CNode* new_node) {	// A의 경우는 특정한 리스트를 수정할 때 필요
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

void insert_node_at_front(CNode* new_node) {	// B의 경우(순차적으로 출력)

	if (Head == NULL) {
		new_node->link = new_node;
		Head = new_node;
	}
	else {
		new_node->link = Head->link;
		Head->link = new_node;
	}
}

void insert_node_at_rear(CNode* new_node) {	// C의 경우
	if (Head == NULL) {
		new_node->link = new_node;
		Head = new_node;
	}
	else {
		new_node->link = Head->link;
		Head->link = new_node;
		Head = new_node; // head는 항상 마지막 노드를 가리킴
	}

}

void delete_node(int key) {	// x값을 갖는 값을 연결리스트에서 삭제

	if (Head == NULL) return; // 빈 리스트
	else if (Head->link == Head && Head->data == key) Head = NULL;
	else
	{
		CNode* pre = Head;
		do
		{
			if (pre->link->data == key) {
				CNode* removed = pre->link;
				pre->link = removed->link;		//pre->link == pre->link->link
				if (Head == removed) Head = pre;	//헤드포인터 유지
				return;
			}
			pre = pre->link;
		} while (pre != Head);
	}
}

void print_list() {	//전체 목록 출력
	cout << "원형연결리스트 결과" << endl;

	if (Head == NULL) return;
	else
	{
		CNode *ptr = Head;

		do
		{
			cout << ptr->link->data << endl;
			ptr = ptr->link;
		} while (ptr != Head);
	}
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
		CNode* new_node = new CNode;	// Node라는 객체를 동적으로 할당받음
		new_node->data = i_data;
		new_node->link = NULL;

		// 전체 연결리스트에 새로운 노드를 추가/삽입
		insert_node_at_rear(new_node);
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