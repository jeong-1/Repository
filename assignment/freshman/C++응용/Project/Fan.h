#ifndef FAN_H
#define FAN_H

class Fan
{
public:
	Fan();

	int getSpeed();
	bool getOn();
	double getRadius();
	char getColor();

	void setSpeed(int);
	void setOn(bool);
	void setRadius(double);
	void setColor(const char[20]);

private:
	int speed;
	bool on;
	double radius;
	char color[20];
};

#endif 