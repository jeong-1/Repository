#include <iostream>
using namespace std;

int arr[2200][2200];
int num[3] = { 0, };
bool isSquare = true;
int first, Y;

void func(int n) {
	int a = n / 3;
	for (int i = 1; i <= n; i += a)
		for (int j = 1; j <= n; j++) {
			if (i%a == 1 && j%a == 1) {
				first = arr[i][j];
				Y = j;
				isSquare = true;
			}
			if (!isSquare)
				continue;
			for (int x = 0; x < a; x++)
				if (arr[i + x][j] != first) {
					if (n / 9 == 1) {
						for (int x = i; x < i + 3; x++) {
							for (int y = Y; y < Y + 3; y++)
								num[arr[x][y] + 1] += 1;
						}
						isSquare = false;
						break;
					}
					else
						func(n / 9);
				}
			if (j%a == 0 && isSquare)
				num[first + 1] += 1;
		}
	return;
}

int main() {
	int N;	
	cin >> N;
	for (int i = 1; i <= N; i++)
		for (int j = 1; j <= N; j++)
			cin >> arr[i][j];
	func(N);
	for (int i = 0; i < 3; i++)
		cout << num[i] << '\n';
}
