#include<iostream>
using namespace std;

// 스택을 이용한 중위표기법 계산
#define element int
const int MAX_SIZE = 1000;

class Stack {
public:
	char mystack[MAX_SIZE];
	int top;

	Stack() {
		top = -1;
	}

	bool is_stack_empty() {
		return (top == -1);
	}

	bool is_stack_full() {
		return (top == MAX_SIZE - 1);
	}

	void push(int data) {
		if (is_stack_full()) {
			cout << "ERROR: STACK FULL" << endl;
			return;
		}
		else {
			mystack[++top] = data;
		}
	}

	int pop() {
		if (is_stack_empty()) {
			cout << "ERROR: Stack Empty" << endl;
			exit(-1);
		}
		else {
			return mystack[top--];
		}
	}

	int peek() {
		if (is_stack_empty()) {
			cout << "ERROR: Stack Empty" << endl;
			return -1;
		}
		else
			return mystack[top];
	}

	void print_stack() {
		cout << "STACK STATUS" << endl;
		for (int i = top; i >= 0; i--)
			cout << mystack[i] << endl;
	}

};

char post_fix_expr[1000];	// 후위표기식이 저장된 배열
int p_index = 0;

char* postfix(char expr[]) {
	Stack MyStack;
	
	// convert to postfix 중위표기법을 후위표기법으로 변환 *가정: 소괄호만, 사칙연산, 피연산자는 한 자리
	for (int i = 0; i < strlen(expr); i++) {
		if (expr[i] == '(') {	//왼쪽 괄호일 때
			continue;
		}
		else if (expr[i] == '+' || expr[i] == '-' || expr[i] == '*' || expr[i] == '/' ) {	//연산자일 때
			MyStack.push(expr[i]);
		}
		else if (expr[i] == ')') {	//오른쪽 괄호일 때
			post_fix_expr[p_index++] = MyStack.pop();
		}
		else if (expr[i] == ' ') {
			continue;
		}
		else {	//피연산자일 때
			post_fix_expr[p_index++] = expr[i];
		}
	}
	post_fix_expr[p_index++] = '\0';	//배열의 끝임을 알림
	return post_fix_expr;
}

int calculate(char postfix[]) {
	Stack MyStack;

	for (int i = 0; i < strlen(postfix); i++) {
		// 연산자이면 pop() 후 계산, 계산 결과는 다시 스택에 push
		if (postfix[i] == '+') {
			int op2 = MyStack.pop();
			int op1 = MyStack.pop();
			MyStack.push(op1 + op2);
		}
		else if (postfix[i] == '*') {
			int op2 = MyStack.pop();
			int op1 = MyStack.pop();
			MyStack.push(op1 * op2);
		}
		else if (postfix[i] == '-') {
			int op2 = MyStack.pop();
			int op1 = MyStack.pop();
			MyStack.push(op1 - op2);
		}
		else if (postfix[i] == '/') {
			int op2 = MyStack.pop();
			int op1 = MyStack.pop();
			MyStack.push(op1 / op2);
		}
		else if (postfix[i] >= '0' && postfix[i] <= '9') {	// 피연산자이면 스택에 push *가정: 피연산자는 한 자리
			MyStack.push(postfix[i] - '0');	//문자를 숫자로 변환. 아스키코드표 확인할 필요없이 문자 '0'을 빼줌
		}
	}
	//최종결과는 스택에 남아 있는 값을 pop하여 반환
	return MyStack.pop();
}

void main() {
	char string[100];
	cout << "중위표기 수식을 입력하세요 : ";
	cin.getline(string, 100);

	char* post_expr = postfix(string);
	//cout << string << " ==> " << post_expr << endl;

	cout << string << " = " << post_expr << " = " << calculate(post_expr) << endl;
}