#include <iostream>
#include <string>
using namespace std;

int main() {
	int n, m;	//세로크기(행), 가로크기(열)
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

	//행렬 가장 마지막 원소부터 1인지 확인
	for (int i = n - 1; i >= 0; i--) {
		for (int j = m - 1; j >= 0; j--) {
			if (arr[i][j] == 1) {	//1이라면 i*j개의 동전 모두 뒤집기
				for (int x = 0; x <= i; x++)
					for (int y = 0; y <= j; y++)
						arr[x][y] = 1 - arr[x][y];
				ans++;
			}
		}
	}
	cout << ans;
}
