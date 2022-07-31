#include<iostream>
#include<string>
#include<vector>
using namespace std;

int main()
{
	vector<int> v;
	int n, x = 1, a, count = 0, sum = 0;
	string s;
	string temp = "";
	cin >> s;

	for (int i = 0; i < s.size(); i++) {
		if (s[i] == '+'){
			v.push_back(x*stoi(temp));
			x = 1;
			temp = "";
		}
		else if (s[i] == '-') {
			v.push_back(x*stoi(temp));
			x = -1;
			temp = "";
		}
		else
			temp += s[i];
	}
	v.push_back(x*stoi(temp));

	while (v.size() != 0) {
		a = v.back();
		v.pop_back();
		if (a < 0) {
			if (count != 0) {
				sum = sum + a - count;
				count = 0;
			}
			else
				sum += a;
		}
		else
			count += a;
	}

	sum += count;
	cout << sum;
}