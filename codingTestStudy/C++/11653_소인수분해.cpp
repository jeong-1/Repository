#include<iostream>
using namespace std;

int div(int n) {
	for (int i = 2; i < n; i++) {
		if (!(n%i)) {
			cout << i << '\n';
			return n / i;
		}
	}
	cout << n;
	return 0;
}

int main() {
	int n;
	cin >> n;
	if(n==1){}
	else {
		while (n)
			n = div(n);
	}
}
