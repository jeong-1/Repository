#include <iostream>
#include <stack>
using namespace std;

int arr[100000];
char ans[200000];
stack<int> st;

int main() {
	int n;
	cin >> n;
	for(int i=0; i<n; i++)
		cin >> arr[i];

	int num = 1, index = 0, i = 0;
	while (num <= n+1 && index <= n-1) {
		if (!st.empty() && st.top() == arr[index]) {
			ans[i++] = '-';
			st.pop();
			index++;
			continue;
		}
		st.push(num++);
		ans[i++] = '+';
	}

	if (st.empty())
		for (int i = 0; i < n * 2; i++)
			cout << ans[i] << '\n';
	else
		cout << "NO";
}
