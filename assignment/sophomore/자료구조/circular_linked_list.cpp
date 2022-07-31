#include<iostream>
using namespace std;

class CNode{
public:
	int data;
	CNode* link;
};

CNode* Head = NULL;	// ���� ������ ����

void insert_node_A(CNode* pre, CNode* new_node) {	// A�� ���� Ư���� ����Ʈ�� ������ �� �ʿ�
	if (Head == NULL) {			// ���鸮��Ʈ�� ���
		Head = new_node;
	}
	else if (pre == NULL) { 	// pre�� NULL�̸� ù��° ���� ����
		new_node->link = Head;
		Head = new_node;
	}
	else {						// pre ������ ����
		new_node->link = pre->link;
		pre->link = new_node;
	}
}

void insert_node_at_front(CNode* new_node) {	// B�� ���(���������� ���)

	if (Head == NULL) {
		new_node->link = new_node;
		Head = new_node;
	}
	else {
		new_node->link = Head->link;
		Head->link = new_node;
	}
}

void insert_node_at_rear(CNode* new_node) {	// C�� ���
	if (Head == NULL) {
		new_node->link = new_node;
		Head = new_node;
	}
	else {
		new_node->link = Head->link;
		Head->link = new_node;
		Head = new_node; // head�� �׻� ������ ��带 ����Ŵ
	}

}

void delete_node(int key) {	// x���� ���� ���� ���Ḯ��Ʈ���� ����

	if (Head == NULL) return; // �� ����Ʈ
	else if (Head->link == Head && Head->data == key) Head = NULL;
	else
	{
		CNode* pre = Head;
		do
		{
			if (pre->link->data == key) {
				CNode* removed = pre->link;
				pre->link = removed->link;		//pre->link == pre->link->link
				if (Head == removed) Head = pre;	//��������� ����
				return;
			}
			pre = pre->link;
		} while (pre != Head);
	}
}

void print_list() {	//��ü ��� ���
	cout << "�������Ḯ��Ʈ ���" << endl;

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

	// ���Ḯ��Ʈ ����
	int data_number;
	cout << "��ü �Է� �������� ������? : ";
	cin >> data_number;

	for (int i = 0; i < data_number; i++)	// XX���� ;������ �Է�
	{
		// ���ο� �����͸� ���ʷ� �Է� ����
		int i_data;
		cout << "���ο� ���� �Է��Ͻÿ�(#" << i + 1 << ") : ";
		cin >> i_data;

		// ���ο� ��带 �����Ͽ� ������ ����
		CNode* new_node = new CNode;	// Node��� ��ü�� �������� �Ҵ����
		new_node->data = i_data;
		new_node->link = NULL;

		// ��ü ���Ḯ��Ʈ�� ���ο� ��带 �߰�/����
		insert_node_at_rear(new_node);
	}

	// Ȯ�ο����� ���
	cout << "##������ ���Ḯ��Ʈ�� : ";
	print_list();

	// ���Ḯ��Ʈ���� ��� ���� �ݺ�
	for (int i = 0; i < 3; i++) {
		int del_data;
		cout << "������ ����� �� : ";
		cin >> del_data;
		delete_node(del_data);	// ��� ����

		cout << "##���� �� ���Ḯ��Ʈ�� : ";
		print_list();
	}
}