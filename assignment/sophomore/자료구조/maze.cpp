#include <iostream>
#include <stack>	//stack 헤더 include
using namespace std;

const int MAZE_SIZE = 10;

char map[MAZE_SIZE][MAZE_SIZE] = {	//10x10 미로. (0.0)부터 (9,9)까지 존재하는 이차원배열 생성
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

	Location(int row = 0, int col = 0) {	//디폴트 매개변수 0
		this->row = row;
		this->col = col;
	}
};

bool isValidLoc(int r, int c) {	//(r,c)가 갈수 있는 위치인지 파악하는 함수
	if (r > MAZE_SIZE || c > MAZE_SIZE || r < 0 || c < 0)
		return false;
	else	//'0' 또는 'x'일 경우에만 true 반환
		return map[r][c] == '0' || map[r][c] == 'x';
}

void maze_print(char maze[MAZE_SIZE][MAZE_SIZE]) {	//화면에 미로를 출력하는 함수
	cout << "\n";
	for (int r = 0; r < MAZE_SIZE; r++) {
		for (int c = 0; c < MAZE_SIZE; c++) {
			cout << maze[r][c];
		}
		cout << "\n";
	}
}

void main() {
	stack<Location> st;			//스택 생성
	Location presentLoc(1, 0);	//현재 위치
	st.push(presentLoc);

	while (!st.empty()) {		//스택이 비어질 때까지 반복
		presentLoc = st.top();	//스택 최상단 데이터를 반환
		st.pop();				//스택 top이 가리키는 데이터 삭제

		int r = presentLoc.row;
		int c = presentLoc.col;
		printf("(%d,%d)", r, c);

		if (map[r][c] == 'x') {	//x에 도달하면 반복문 탈출. 종료
			maze_print(map);
			cout << "미로 탐색 성공" << endl;
			return;
		}
		else {	//x에 도달하지 못했을 경우 갈수 있는 나머지 길 모두 스택에 push
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
	cout << "미로 탐색 실패" << endl;
}