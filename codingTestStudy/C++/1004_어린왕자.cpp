#include <iostream>
#include <cmath>
using namespace std;

int main() {
	int t;
	cin >> t;

	int x1, y1, x2, y2, n, cX, cY, r, cnt = 0;
	while (t--) {
		cin >> x1 >> y1 >> x2 >> y2;
		cin >> n;

		for (int i = 0; i < n; i++) {
			cin >> cX >> cY >> r;
			if (sqrt(pow(cX - x1, 2) + pow(cY - y1, 2)) > r && sqrt(pow(cX - x2, 2) + pow(cY - y2, 2)) < r
				|| sqrt(pow(cX - x1, 2) + pow(cY - y1, 2)) < r && sqrt(pow(cX - x2, 2) + pow(cY - y2, 2)) > r)
				cnt++;
		}
		cout << cnt << '\n';
		cnt = 0;
	}
}
