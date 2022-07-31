#include <iostream>
using namespace std;

int arr[41][2];

int main() {
	int t, n;
	cin >> t;

	//n이 0과 1일 때 각각의 0, 1 개수
	arr[0][0] = 1; 
	arr[0][1] = 0;
	arr[1][0] = 0; 
	arr[1][1] = 1;

	//배열에 값 넣어주기
	for (int i = 2; i <= 40; i++) {
		arr[i][0] = arr[i - 1][0] + arr[i - 2][0];
		arr[i][1] = arr[i - 1][1] + arr[i - 2][1];
	}

	for (int i = 0; i < t; i++) {
		cin >> n;
		cout << arr[n][0] << ' ' << arr[n][1] << '\n';
	}
}
