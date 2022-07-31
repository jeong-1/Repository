#include <iostream>
#include <stack>
#include <string>
using namespace std;

stack<char> stLeft;
stack<char> stRight;

int main() {
	string s;
	cin >> s;
	for (int i = 0; i < s.size(); i++)
		stLeft.push(s[i]);

	int m;
	char temp, c;
	cin >> m;
	while (m--) {
		cin >> temp;
		if (temp == 'P') {
			cin >> c;
			stLeft.push(c);
		}
		else if (temp == 'L') {
			if (stLeft.empty())
				continue;
			else {
				stRight.push(stLeft.top());
				stLeft.pop();
			}
		}
		else if (temp == 'B') {
			if (stLeft.empty())
				continue;
			else
				stLeft.pop();
		}
		else if (temp == 'D') {
			if (stRight.empty())
				continue;
			else {
				stLeft.push(stRight.top());
				stRight.pop();
			}
		}
	}
	while (!stLeft.empty()) {
		stRight.push(stLeft.top());
		stLeft.pop();
	}
	while (!stRight.empty()) {
		cout << stRight.top();
		stRight.pop();
	}
}
