#include <iostream>
#include <ctime>
using namespace std;

int main()
{
	//1970�� 1�� 1�� ���� ������ �� �� ���
	int totalSeconds = time(0);

	//���� �ð��� �� �� ���
	int currentSeconds = totalSeconds % 60;
	
	//��ü �� �� ���
	int totalMinutes = totalSeconds / 60;

	//���� �� �� ���
	int currentMinutes = totalMinutes % 60;

	//��ü �ð� �� ���
	int totalHours = totalMinutes / 60;

	//���� �ð� �� ���
	int currentHours = totalHours % 24;

	//��ü ��¥ �� ��� 
	int totalDays = totalHours / 24;

	//���� ��¥ �� ���
	int currentDays = totalDays % 365;

	//��� ȭ�� ���
	cout << "Current time is " << currentDays << " days " << currentHours << ":" << currentMinutes << ":" << currentSeconds << "GMT" << endl;

	return 0;
}