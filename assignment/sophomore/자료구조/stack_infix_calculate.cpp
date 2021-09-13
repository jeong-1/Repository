#include<iostream>
using namespace std;

// ������ �̿��� ����ǥ��� ���
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

char post_fix_expr[1000];	// ����ǥ����� ����� �迭
int p_index = 0;

char* postfix(char expr[]) {
	Stack MyStack;
	
	// convert to postfix ����ǥ����� ����ǥ������� ��ȯ *����: �Ұ�ȣ��, ��Ģ����, �ǿ����ڴ� �� �ڸ�
	for (int i = 0; i < strlen(expr); i++) {
		if (expr[i] == '(') {	//���� ��ȣ�� ��
			continue;
		}
		else if (expr[i] == '+' || expr[i] == '-' || expr[i] == '*' || expr[i] == '/' ) {	//�������� ��
			MyStack.push(expr[i]);
		}
		else if (expr[i] == ')') {	//������ ��ȣ�� ��
			post_fix_expr[p_index++] = MyStack.pop();
		}
		else if (expr[i] == ' ') {
			continue;
		}
		else {	//�ǿ������� ��
			post_fix_expr[p_index++] = expr[i];
		}
	}
	post_fix_expr[p_index++] = '\0';	//�迭�� ������ �˸�
	return post_fix_expr;
}

int calculate(char postfix[]) {
	Stack MyStack;

	for (int i = 0; i < strlen(postfix); i++) {
		// �������̸� pop() �� ���, ��� ����� �ٽ� ���ÿ� push
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
		else if (postfix[i] >= '0' && postfix[i] <= '9') {	// �ǿ������̸� ���ÿ� push *����: �ǿ����ڴ� �� �ڸ�
			MyStack.push(postfix[i] - '0');	//���ڸ� ���ڷ� ��ȯ. �ƽ�Ű�ڵ�ǥ Ȯ���� �ʿ���� ���� '0'�� ����
		}
	}
	//��������� ���ÿ� ���� �ִ� ���� pop�Ͽ� ��ȯ
	return MyStack.pop();
}

void main() {
	char string[100];
	cout << "����ǥ�� ������ �Է��ϼ��� : ";
	cin.getline(string, 100);

	char* post_expr = postfix(string);
	//cout << string << " ==> " << post_expr << endl;

	cout << string << " = " << post_expr << " = " << calculate(post_expr) << endl;
}