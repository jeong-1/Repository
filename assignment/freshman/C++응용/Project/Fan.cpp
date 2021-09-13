#include "Fan.h"
#include <cstring>

Fan::Fan()
{
	int speed = 1;
	bool on = false;
	double radius = 5;
	char color[20] = "white";
}

int Fan::getSpeed()
{
	return speed;
}

bool Fan::getOn()
{
	return on;
}

double Fan::getRadius()
{
	return radius;
}

//
char Fan::getColor()
{
	return color[20];
}

void Fan::setSpeed(int newSpeed)
{
	if (newSpeed >= 1 && newSpeed <= 3)
		speed = newSpeed;
}

void Fan::setOn(bool newOn)
{
	on = newOn;
}

void Fan::setRadius(double newRadius)
{
	radius = newRadius;
}

void Fan::setColor(const char newColor[20])
{
	strcpy_s(color,&newColor[20]);
}
