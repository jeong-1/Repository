#ifndef TIME_H
#define TIME_H

class Time
{
public:
	Time();

	Time(int elapseTime);

	void setTime(int elapseTime);
	int getHour();
	int getMinute();
	int getSecond();

private:
	int hour;
	int minute;
	int second;
};

#endif