#include <iostream>
#include <vector>
#include <string>
#include <cstring>
using namespace std;

int main() {
	int n;
	vector<string> v, v1;
	int count[27] = { 0, };
	string s, str;
	int ans = 0;

	cin >> n;
	for (int i = 0; i < n; i++) {
		cin >> s;
		v.push_back(s);
	}

	for (int i = 0; i < v.size(); i++) {
		int num = 0;
		memset(count, 0, sizeof(count));	//배열 초기화
		string temp = v[i];
		for (int j = 0; j < temp.size(); j++) {
			if (!count[temp[j] - 'a']) {
				num++;
				count[temp[j] - 'a'] = num;
				str += count[temp[j] - 'a'];
			}
			else {
				str += count[temp[j] - 'a'];
			}
		}
		v1.push_back(str);
		str.clear();
		temp.clear();
	}

	for (int i = 0; i < v1.size(); i++) {
		for (int j = i + 1; j < v1.size(); j++) {
			if (v1[i] == v1[j])
				ans++;
		}
	}

	cout << ans;
}
