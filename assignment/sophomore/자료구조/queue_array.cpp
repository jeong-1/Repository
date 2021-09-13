#include<iostream>
using namespace std;

// ť�� �⺻ �Լ� ���� �׽�Ʈ
#define element int
#define MAX_SIZE 100

element Queue[MAX_SIZE];
int front = -1;
int rear = -1;

bool is_queue_empty() {
	return (front == rear);
}

bool is_queue_full() {
	return (rear == MAX_SIZE - 1);
}

void enQueue(element data) {
	if (is_queue_full()) {
		cout << "ERROR: Queue Full" << endl;
		return;
	}
	else
		Queue[++rear] = data;
}

element deQueue() {
	if (is_queue_empty()) {
		cout << "ERROR: Queue Empty" << endl;
		return -1;	// exit();�� ���α׷��� ������ ��
	}
	else
		return Queue[++front];
}

element peek() {
	if (is_queue_empty()) {
		cout << "ERROR: Queue Empty" << endl;
		return -1;
	}
	else
		return Queue[front+1];	//*���� front ���� �ٲٸ� �ȵ�
}

void print_queue() {
	cout << "QUEUE STATUS (front = " << front << ", rear = " << rear <<  ")" << endl;

	if (is_queue_empty()) return;
	else {
		for (int i = front + 1; i <= rear; i++)	//*���� front���Ͱ� �ƴ� front+1������
			cout << Queue[i] << " ";
	}
	cout << endl;
}

void main() {
	enQueue(10);
	enQueue(20);
	enQueue(30);
	deQueue();
	print_queue();

	enQueue(40);
	enQueue(50);
	deQueue();
	enQueue(60);
	print_queue();
}