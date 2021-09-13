#include <iostream>
using namespace std;

int main() {
	//나무 개수, 자를 때 드는 비용, 한 단위 가격
	int n, c, w;
	cin >> n >> c >> w;

	int* tree = new int[n];
	//나무길이, 자른 나무 개수, 자른 횟수, 돈들의 합, 돈 최댓값
	int maxL = 0, countTree, cut, sum = 0, maxP = 0;
	for (int i = 0; i < n; i++) {
		cin >> tree[i];
		if (tree[i] > maxL)
			maxL = tree[i];
	}

	while (maxL) {
		sum = 0;
		for (int i = 0; i < n; i++) {
			if (tree[i]>=maxL) {
				countTree = tree[i] / maxL;

				if (!(tree[i] % maxL))
					cut = countTree - 1;
				else
					cut = countTree;
				if (w * countTree * maxL - c * cut > 0)
					sum += w * countTree * maxL - c * cut;
			}
		}
		if (sum > maxP)
			maxP = sum;

		maxL--;
	}
	cout << maxP;
}
