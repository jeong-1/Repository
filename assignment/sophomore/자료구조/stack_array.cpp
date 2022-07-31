#include<iostream>
using namespace std;

// 객체 선언 방식 스택의 기본 함수 구현, 몇 가지 간이 테스트
#define element int
//#define MAX_SIZE 100
const int MAX_SIZE = 100;

class Stack {
public:
	element MyStack[MAX_SIZE];
	int top;

	Stack() {	// 생성자 함수
		top = -1;
	}

	//멤버 함수
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
			return -1;	// exit();로 프로그램을 끝내도 됨
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
	MySt.pop();	// 가장 위에 있는 30을 반환. Stack에서 30 없어짐
	MySt.print_stack();

	MySt.push(40);
	MySt.push(50);
	MySt.pop();
	MySt.push(60);
	MySt.print_stack();
}