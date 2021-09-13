#include <iostream>
#include <string>
#include <stack>
#include <iomanip>
using namespace std;

int n;
string s;
stack<double> st;
int arr[26];
double opr1, opr2;

int main() {
	cin >> n;
	cin >> s;
	for (int i = 0; i < n; i++)
		cin >> arr[i];
	for (int i = 0; i < s.size(); i++) {
		if (s[i] == '+') {
			opr1 = st.top();
			st.pop();
			opr2 = st.top();
			st.pop();
			st.push(opr2 + opr1);
		}
		else if (s[i] == '*') {
			opr1 = st.top();
			st.pop();
			opr2 = st.top();
			st.pop();
			st.push(opr2 * opr1);
		}
		else if (s[i] == '-') {
			opr1 = st.top();
			st.pop();
			opr2 = st.top();
			st.pop();
			st.push(opr2 - opr1);
		}
		else if (s[i] == '/') {
			opr1 = st.top();
			st.pop();
			opr2 = st.top();
			st.pop();
			st.push(opr2 / opr1);
		}
		else
			st.push(arr[s[i] - 'A']);
	}
	cout << fixed << setprecision(2) << st.top();
}
