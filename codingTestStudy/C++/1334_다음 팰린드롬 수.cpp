#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

bool isEven = false;

string nine(string str, int index) {
	int i = index - 1, j = index + 1;
	string temp = "0", ans= "";
	string first, last;
	while (i>=0 && j<str.size()) {
		if (str[i] == '9' && str[j] == '9') {
			temp += "00";
			i--; j++;
		}
		else if (str[i] != '9' && str[j] == '9') {
			str[i] = ++str[i];
			first = str.substr(0, i + 1);
			reverse(first.begin(), first.end());
			last = first;
			reverse(first.begin(), first.end());
			if (isEven)
				ans += (first + temp + "0" + last);
			else
				ans += (first + temp + last);
			return ans;
		}
		else {
			first = str.substr(0, i + 1);
			reverse(first.begin(), first.end());
			first[0] = ++first[0];
			last = first;
			reverse(first.begin(), first.end());
			if(isEven)
				ans += (first + temp + "0" + last);
			else
				ans += (first + temp + last);
			return ans;
		}
	}
	temp[0] = '1';
	if (isEven)
		ans += (temp + "01");
	else
		ans += (temp + "1");
	return ans;
}


int main() {
	string s, first, last;
	cin >> s;

	char temp;
	int index = s.size() / 2;

	if (s.size() % 2 == 0) {
		isEven = true;
		first = s.substr(0, index);
		temp = s[index - 1];
		last = s.substr(index);
		reverse(first.begin(), first.end());
		if (first > last) {
			last = first;
			reverse(first.begin(), first.end());
			cout << first + last;
		}
		else {
			if (temp == '9')
				cout << nine(s, index-1);
			else {
				temp++;
				first[0] = temp;
				last = first;
				reverse(first.begin(), first.end());
				cout << first + last;
			}
		}
	}
	else {
		first = s.substr(0, index);
		temp = s[index];
		last = s.substr(index + 1);
		reverse(first.begin(), first.end());
		if (first > last) {
			last = first;
			reverse(first.begin(), first.end());
			cout << first + temp + last;
		}
		else {
			if (temp == '9')
				cout << nine(s, index);
			else {
				temp++;
				last = first;
				reverse(first.begin(), first.end());
				cout << first + temp + last;
			}
		}
	}
}
