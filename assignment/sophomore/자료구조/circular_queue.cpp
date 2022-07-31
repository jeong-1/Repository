#include<iostream>
using namespace std;

// ť�� �⺻ �Լ� ���� �׽�Ʈ
#define element int
#define MAX_SIZE 6

element CQueue[MAX_SIZE];
int front = 0;
int rear = 0;

bool is_queue_empty() {
	return (front == rear);
}

bool is_queue_full() {
	return (front == (rear + 1) % MAX_SIZE);
}

void enQueue(element data) {
	if (is_queue_full()) {
		cout << "ERROR: CQueue Full" << endl;
		return;
	}
	else {
		rear = (rear + 1) % MAX_SIZE;
		CQueue[rear] = data;
	}
}

element deQueue() {
	if (is_queue_empty()) {
		cout << "ERROR: Queue Empty" << endl;
		return -1;	// exit();�� ���α׷��� ������ ��
	}
	else
		front = (front + 1) % MAX_SIZE;	//�迭�� ������ ť�� front�� �迭�� ù �ε����� �� ĭ ������ ����Ű�� ����
		return CQueue[front];	//front ��ȯ, front �� �������� �ʴ´ٰ� ��
}


void print_queue() {
	cout << "QUEUE STATUS (front = " << front << ", rear = " << rear << ")" << endl;

	//if (is_queue_empty()) return;
	if (front <= rear) {	//front == rear�� �� for�� ���� ����(���ǿ� ���� ����)
		for (int i = front + 1; i <= rear; i++)	//*���� front���Ͱ� �ƴ� front+1������
			cout << CQueue[i] << " ";
	}
	else{
		for (int i = front + 1; i < MAX_SIZE; i++)	//*���� front���Ͱ� �ƴ� front+1������
			cout << CQueue[i] << " ";
		for (int i = 0; i <= rear; i++)
			cout << CQueue[i] << " ";
	}
	cout << endl;
}

void main() {
	print_queue();

	enQueue(10);
	enQueue(20);
	enQueue(30);
	enQueue(40);
	enQueue(50);
	deQueue();

	enQueue(60);

	print_queue();

	deQueue();
	deQueue();
	print_queue();
}