#include <iostream>
#include <string>
using namespace std;

int main() {
	int n, m;	//����ũ��(��), ����ũ��(��)
	cin >> n >> m;

	int ans=0;
	string str;
	int arr[100][100];
	for (int i = 0; i < n; i++) {
		cin >> str;
		for (int j = 0; j < m; j++) {
			arr[i][j] = str[j] - '0';
		}
	}

	//��� ���� ������ ���Һ��� 1���� Ȯ��
	for (int i = n - 1; i >= 0; i--) {
		for (int j = m - 1; j >= 0; j--) {
			if (arr[i][j] == 1) {	//1�̶�� i*j���� ���� ��� ������
				for (int x = 0; x <= i; x++)
					for (int y = 0; y <= j; y++)
						arr[x][y] = 1 - arr[x][y];
				ans++;
			}
		}
	}
	cout << ans;
}
