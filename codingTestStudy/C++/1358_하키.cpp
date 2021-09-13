#include <iostream>
#include <algorithm>
using namespace std;

int main() {
	int w, h, x, y, p, x1, y1, ans=0;
	double length;
	cin >> w >> h >> x >> y >> p;
	while (p--) {
		cin >> x1;
		cin >> y1;
		int r = h / 2;
		length = (x1 < x) ? (x1 - x)*(x1 - x) + (y1 - (y + h / 2))*(y1 - (y + h / 2)) : (x1 - (x+w))*(x1 - (x + w)) + (y1 - (y + h / 2))* (y1 - (y + h / 2));
		if ((x <= x1 && x1<= (x + w)) && (y <= y1 && y1 <= (y + h)))
			ans++;
		else if (length <= r*r)
			ans++;
	}
	cout << ans;
}
