#include <iostream>
#include <vector>
using namespace std;

const int MAX = 100001;
int arr[MAX];
vector<int> vec;

void primeNumber() {
	arr[0] = arr[1] = -1;
	for (int i = 2; i < MAX; i++)
		arr[i] = i;
	for (int i = 2; i*i < MAX; i++) {
		if (arr[i] == i)
			for (int j = i * i; j < MAX; j += i)
				if (arr[j] == j)
					arr[j] = -1;
	}
	for (int i = 2; i < MAX; i++)
		if (arr[i] == i)
			vec.push_back(i);
}

int main() {
	int a, b;
	int ans = 0;
	cin >> a >> b;

	primeNumber();
	for (int i = a; i <= b; i++) {
		int cnt = 0, tmp = i;
		for (int j = 0; j < vec.size(); j++) {
			while (!(tmp%vec[j])) {	//나누어 떨어지지 않을 때까지
				cnt++;
				tmp = tmp / vec[j];
				if (tmp == 1)
					break;
			}
			if (tmp == 1)
				break;
		}
		if (arr[cnt] == cnt)
			ans++;
	}
	cout << ans;
}
