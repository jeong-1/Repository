#include <iostream>
using namespace std;

int arr[41][2];

int main() {
	int t, n;
	cin >> t;

	//n�� 0�� 1�� �� ������ 0, 1 ����
	arr[0][0] = 1; 
	arr[0][1] = 0;
	arr[1][0] = 0; 
	arr[1][1] = 1;

	//�迭�� �� �־��ֱ�
	for (int i = 2; i <= 40; i++) {
		arr[i][0] = arr[i - 1][0] + arr[i - 2][0];
		arr[i][1] = arr[i - 1][1] + arr[i - 2][1];
	}

	for (int i = 0; i < t; i++) {
		cin >> n;
		cout << arr[n][0] << ' ' << arr[n][1] << '\n';
	}
}
