#include <iostream>
#include <vector>
#define MAX 1000000+1
using namespace std;

int prime[MAX];
vector <int> v;

void primeNum() {
	prime[0] = prime[1] = -1;
	for (int i = 2; i < MAX; i++)
		prime[i] = i;
	
	for (int i = 2; i*i < MAX; i++) {	
		if (prime[i] == i)
			for (int j = i*i; j < MAX; j+=i)
				if(prime[j] == j)
					prime[j] = -1;
	}
	for(int i = 2; i < MAX; i++)
		if(prime[i]==i)
			v.push_back(i); 
}

int main() {
	int n;
	long long s;
	cin >> n;
	primeNum();

	while(n--) {
		bool isSecret = true;
		cin >> s;
		for (int i = 0; i < v.size(); i++)
			if (s % v[i] == 0) {
				isSecret = false;
				break;
			}
		if (isSecret)
			cout << "YES\n";
		else
			cout << "NO\n";
	}
}
