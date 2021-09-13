#include<iostream>
using namespace std;

// ��ü ���� ��� ������ �⺻ �Լ� ����, �� ���� ���� �׽�Ʈ
#define element int
//#define MAX_SIZE 100
const int MAX_SIZE = 100;

class Stack {
public:
	element MyStack[MAX_SIZE];
	int top;

	Stack() {	// ������ �Լ�
		top = -1;
	}

	//��� �Լ�
	bool is_stack_empty() {
		return (top == -1);
	}

	bool is_stack_full() {
		return (top == MAX_SIZE - 1);
	}

	void push(element data) {
		if (is_stack_full()) {
			cout << "ERROR: Stack Full" << endl;
			return;
		}
		else
			MyStack[++top] = data;
	}

	element pop() {
		if (is_stack_empty()) {
			cout << "ERROR: Stack Empty" << endl;
			return -1;	// exit();�� ���α׷��� ������ ��
		}
		else
			return MyStack[top--];
	}

	element peek() {
		if (is_stack_empty()) {
			cout << "ERROR: Stack Empty" << endl;
			return -1;
		}
		else
			return MyStack[top];
	}

	void print_stack() {
		cout << "STACK STATUS (top = " << top << ")" << endl;

		if (is_stack_empty()) return;
		else {
			for (int i = top; i >= 0; i--)
				cout << MyStack[i] << endl;
		}
	}
};

void main() {
	Stack MySt;

	MySt.push(10);
	MySt.push(20);
	MySt.push(30);
	MySt.pop();	// ���� ���� �ִ� 30�� ��ȯ. Stack���� 30 ������
	MySt.print_stack();

	MySt.push(40);
	MySt.push(50);
	MySt.pop();
	MySt.push(60);
	MySt.print_stack();
}