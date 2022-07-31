#include<iostream>
using namespace std;

#define element int
class TreeNode {
public:
	element data;
	TreeNode *left, *right;

	TreeNode(element value){	// 생성자
		data = value;
		left = right = NULL;
	}
};

element evaluate(TreeNode* node) {
	//if (node == NULL) return 0;
	if (node->left == NULL && node->right == NULL)	// 단말 노드일 때(피연산자 노드일 때) // 후위 순회법에서 피연산자는 무조건 단말 노드?
		return node->data;
	else {	// 비단말 노드일 때(연산자 노드일 때)
		element opr1 = evaluate(node->left);
		element opr2 = evaluate(node->right);
		if (node->data == '+') return opr1 + opr2;
		else if (node->data == '*') return opr1 * opr2;
		else if (node->data == '-') return opr1 - opr2;
		else if (node->data == '/') return opr1 / opr2;
	}
}

void main() {
	// Expression Tree 구성(후위순회 방식) // 포화 이진트리라고 가정?
	// 노드 7개 생성
	TreeNode* n1 = new TreeNode(3);
	TreeNode* n2 = new TreeNode(2);
	TreeNode* n3 = new TreeNode('*');
	TreeNode* n4 = new TreeNode(5);
	TreeNode* n5 = new TreeNode(6);
	TreeNode* n6 = new TreeNode('+');
	TreeNode* root = new TreeNode('+');

	// 가지 6개 생성
	n3->left = n1;
	n3->right = n2;
	n6->left = n4;
	n6->right = n5;
	root->left = n3;
	root->right = n6;

	cout << "수식 트리의 값은 = " << evaluate(root) << endl;
}