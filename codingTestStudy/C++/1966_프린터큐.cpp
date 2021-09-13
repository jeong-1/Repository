#include <iostream>
using namespace std;

int q[100];

int main() {
	int t;
	cin >> t;

	int n, index;

	while (t--) {
		cin >> n >> index;
		int  cnt = 1, front = 0, max;

		for (int i = 0; i < n; i++)
			cin >> q[i];

		while (true) {
			max = 0;
			for (int i = 0; i<n; i++)
				if (q[i] > max)
					max = q[i];
			while (q[front] != max)
				front = (front + 1) % n;
			if (front == index)
				break;
			q[front] = 0;
			front = (front + 1) % n;
			cnt++;
		}
		cout << cnt << '\n';
	}
}
