#include <iostream>
#include <algorithm>
using namespace std;

int main() {
	long long a, b, r, high, low;
	cin >> a >> b;
	high = max(a, b);
	low = min(a, b);

	while (high % low != 0) {
		r = high%low;
		high = low;
		low = r;
	}
	for(int i=0; i<low; i++)
		cout << 1;
}
