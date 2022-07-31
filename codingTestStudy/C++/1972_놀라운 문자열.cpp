#include <iostream>
#include <string>
#include <vector>
using namespace std;

vector<string> v;

int main() {
	while (true) {
		string s;
		bool isSurprised = true;

		cin >> s;
		if (s == "*")
			break;
		int n = 1;
		while (n < s.size()) {
			v.clear();

			for (int i = 0; i + n < s.size(); i++) {
				string temp = "";
				temp += s[i];
				temp += s[i + n];
				v.push_back(temp);
			}
			for (int i = 0; i < v.size(); i++) {
				for (int j = i + 1; j < v.size(); j++) {
					if (v[i] == v[j]) {
						isSurprised = false;
						break;
					}
				}
				if(!isSurprised) break;
			}
			if (!isSurprised) {
				cout << s << " is NOT surprising.\n";
				break;
			}
			n++;
		}
		if(isSurprised)
			cout << s << " is surprising.\n";
	}
}
