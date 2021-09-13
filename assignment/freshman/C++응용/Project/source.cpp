#include <iostream>
#include "Fan.h"
#include "Time.h"
using namespace std;

int main()
{
	Fan f1;
	Fan f2;

	f1.setSpeed(3);
	f1.setRadius(10);
	f1.setOn(true);
	f1.setColor("yellow"); 

	cout << "<Exercise 09-02>\n"
		<< "First fan properties: \n"
		<< "Fan speed: " << f1.getSpeed() << "\nFan radius: " << f1.getRadius()
		<< "\nFan on? " << f1.getOn() << "\nFan color: " << f1.getColor() << endl << endl;
	
	f2.setSpeed(2);
	f2.setRadius(5);
	f2.setOn(false);

	cout << "Second fan properties: \n"
		<< "Fan speed: " << f2.getSpeed() << "\nFan radius: " << f2.getRadius()
		<< "\nFan on? " << f2.getOn() << "\nFan color: " << f2.getColor() << endl << endl << endl;



	Time t1;
	Time t2(555550);

	cout << "<Exercise 09-05>\n" 
		<< "Current Time = " << t1.getHour() << "h: " << t1.getMinute() << "m: " << t1.getSecond() << "s" << endl;
	cout << "Time(555550) = " << t2.getHour() << "h: " << t2.getMinute() << "m: " << t2.getSecond() << "s" << endl;

	return 0;
}