#include <iostream>
using namespace std;

int main()
{
	cout << "<���� #1>" << endl;
	int num1, num2, num3;
	cout << "0�� 9 ������ ���� 3���� �Է��ϼ���: ";
	cin >> num1 >> num2 >> num3;
	cout << "3���� ���� �̷���� ������: " << num1*100 + num2*10 + num3 << endl;	//�Է¹��� 3���� ������ ���ڸ� �� �����

	cout << "<���� #2>" << endl;
	int num, remainder1, remainder2;
	cout << "1���� 1000 ������ ������ �Է��ϼ���: ";
	cin >> num;
	remainder1 = num % 100;															//num�� 100���� ���� ������
	remainder2 = remainder1 % 10;													//remainder1�� 10���� ���� ������
	cout << "�� �ڸ� ���� ��: " << num/100 + remainder1/10 + remainder2 << endl;	//�� �ڸ� ���� ���ڸ� ���� ��� ���ϱ�

	cout << "<���� #3>" << endl;
	int num4, remainder3, remainder4;
	cout << "0�� 31 ������ ������ �Է��ϼ���: ";
	cin >> num;
	//�Է¹��� ����(0~31)�� 2�� ��� ������
	num1 = num / 2;
	num2 = num1 / 2;
	num3 = num2 / 2;
	num4 = num3 / 2;
	//�Է¹��� ������ ���� ������ ����� ������ ��
	remainder1 = num % 2;
	remainder2 = num1 % 2;
	remainder3 = num2 % 2;
	remainder4 = num3 % 2;
	cout << num4 << remainder4 << remainder3 << remainder2 << remainder1 << endl;	//������ ��� ������ ���� �ؿ������� ����

	return 0;
}