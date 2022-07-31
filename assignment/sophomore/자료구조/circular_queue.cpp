#include<iostream>
using namespace std;

// 큐의 기본 함수 구현 테스트
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
		return -1;	// exit();로 프로그램을 끝내도 됨
	}
	else
		front = (front + 1) % MAX_SIZE;	//배열로 구현한 큐의 front는 배열의 첫 인덱스의 한 칸 앞쪽을 가리키고 있음
		return CQueue[front];	//front 반환, front 값 존재하지 않는다고 봄
}


void print_queue() {
	cout << "QUEUE STATUS (front = " << front << ", rear = " << rear << ")" << endl;

	//if (is_queue_empty()) return;
	if (front <= rear) {	//front == rear일 때 for문 돌지 않음(조건에 맞지 않음)
		for (int i = front + 1; i <= rear; i++)	//*주의 front부터가 아닌 front+1부터임
			cout << CQueue[i] << " ";
	}
	else{
		for (int i = front + 1; i < MAX_SIZE; i++)	//*주의 front부터가 아닌 front+1부터임
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