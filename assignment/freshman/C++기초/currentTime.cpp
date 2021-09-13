#include <iostream>
#include <ctime>
using namespace std;

int main()
{
	//1970년 1월 1일 자정 이후의 초 값 계산
	int totalSeconds = time(0);

	//현재 시간의 초 값 계산
	int currentSeconds = totalSeconds % 60;
	
	//전체 분 값 계산
	int totalMinutes = totalSeconds / 60;

	//현재 분 값 계산
	int currentMinutes = totalMinutes % 60;

	//전체 시간 값 계산
	int totalHours = totalMinutes / 60;

	//현재 시간 값 계산
	int currentHours = totalHours % 24;

	//전체 날짜 값 계산 
	int totalDays = totalHours / 24;

	//현재 날짜 값 계산
	int currentDays = totalDays % 365;

	//결과 화면 출력
	cout << "Current time is " << currentDays << " days " << currentHours << ":" << currentMinutes << ":" << currentSeconds << "GMT" << endl;

	return 0;
}