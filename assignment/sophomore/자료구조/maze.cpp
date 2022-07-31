#include <iostream>
#include <stack>	//stack ��� include
using namespace std;

const int MAZE_SIZE = 10;

char map[MAZE_SIZE][MAZE_SIZE] = {	//10x10 �̷�. (0.0)���� (9,9)���� �����ϴ� �������迭 ����
	{'1', '1', '1', '1', '1', '1', '1', '1', '1', '1' },
	{'e', '0', '0', '0', '1', '0', '0', '0', '0', '1' },
	{'1', '0', '0', '1', '1', '0', '0', '0', '0', '1' },
	{'1', '0', '1', '1', '1', '0', '0', '1', '0', '1' },
	{'1', '0', '0', '0', '1', '0', '0', '1', '0', '1' },
	{'1', '0', '1', '0', '1', '0', '0', '1', '0', '1' },
	{'1', '0', '1', '0', '1', '0', '0', '1', '0', '1' },
	{'1', '0', '1', '0', '1', '0', '0', '1', '0', '1' },
	{'1', '0', '1', '0', '0', '0', '0', '1', '0', 'x' },
	{'1', '1', '1', '1', '1', '1', '1', '1', '1', '1' }
};

class Location {
public:
	int row;
	int col;

	Location(int row = 0, int col = 0) {	//����Ʈ �Ű����� 0
		this->row = row;
		this->col = col;
	}
};

bool isValidLoc(int r, int c) {	//(r,c)�� ���� �ִ� ��ġ���� �ľ��ϴ� �Լ�
	if (r > MAZE_SIZE || c > MAZE_SIZE || r < 0 || c < 0)
		return false;
	else	//'0' �Ǵ� 'x'�� ��쿡�� true ��ȯ
		return map[r][c] == '0' || map[r][c] == 'x';
}

void maze_print(char maze[MAZE_SIZE][MAZE_SIZE]) {	//ȭ�鿡 �̷θ� ����ϴ� �Լ�
	cout << "\n";
	for (int r = 0; r < MAZE_SIZE; r++) {
		for (int c = 0; c < MAZE_SIZE; c++) {
			cout << maze[r][c];
		}
		cout << "\n";
	}
}

void main() {
	stack<Location> st;			//���� ����
	Location presentLoc(1, 0);	//���� ��ġ
	st.push(presentLoc);

	while (!st.empty()) {		//������ ����� ������ �ݺ�
		presentLoc = st.top();	//���� �ֻ�� �����͸� ��ȯ
		st.pop();				//���� top�� ����Ű�� ������ ����

		int r = presentLoc.row;
		int c = presentLoc.col;
		printf("(%d,%d)", r, c);

		if (map[r][c] == 'x') {	//x�� �����ϸ� �ݺ��� Ż��. ����
			maze_print(map);
			cout << "�̷� Ž�� ����" << endl;
			return;
		}
		else {	//x�� �������� ������ ��� ���� �ִ� ������ �� ��� ���ÿ� push
			map[r][c] = '.';	
			if (isValidLoc(r - 1, c))
				st.push(Location(r - 1, c));
			if (isValidLoc(r + 1, c))
				st.push(Location(r + 1, c));
			if (isValidLoc(r, c - 1))
				st.push(Location(r, c - 1));
			if (isValidLoc(r, c + 1))
				st.push(Location(r, c + 1));
		}
	}
	maze_print(map);
	cout << "�̷� Ž�� ����" << endl;
}