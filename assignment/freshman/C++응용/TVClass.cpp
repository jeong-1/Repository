#include <iostream>
using namespace std;

class TV
{
public:
	int channel;
	int volumeLevel;
	bool on;

	TV()
	{
		channel = 1;
		volumeLevel = 1;
		on = false;
	}

	TV(int nChannel, int nVolume)
	{
		channel = nChannel;
		volumeLevel = nVolume;
		on = true;
	}

	void turnOn()
	{
		on = true;
	}

	void turnOff()
	{
		on = false;
	}

	void setChannel(int newChannel)
	{
		if (on && newChannel >= 1 && newChannel <= 120)
			channel = newChannel;
	}

	void setvolume(int newVolumeLevel)
	{
		if (on && newVolumeLevel >= 1 && newVolumeLevel <= 7)
			volumeLevel = newVolumeLevel;
	}

	void channelUp()
	{
		if (on && channel < 120)
			channel++;
	}

	void channelUpBy2()
	{
		if (on && (channel + 2 <= 120))
			channel = channel + 2;
		else
			cout << "Channel-up error!" << endl;
	}

	void channelUp(int delta)
	{
		if (on && (channel + delta <= 120))
			channel = channel + delta;
		else
			cout << "Channel-up error!" << endl;
	}

	void channelDown()
	{
		if (on && channel > 1)
			channel--;
	}

	void channelDownBy2()
	{
		if (on && (channel - 2 >= 1))
			channel = channel - 2;
		else
			cout << "Channel-down error!" << endl;
	}

	void channelDown(int delta)
	{
		if (on && (channel - delta >= 1))
			channel = channel - delta;
		else
			cout << "Channel-down error!" << endl;
	}

	void volumUp()
	{
		if (on && volumeLevel < 7)
			volumeLevel++;
	}

	void volumDown()
	{
		if (on && volumeLevel > 1)
			volumeLevel--;
	}
};

int main()
{
	TV tv1;
	tv1.turnOn();
	tv1.setChannel(30);
	tv1.setvolume(3);
	cout << "tv1's channel is " << tv1.channel
		<< " and volume level is " << tv1.volumeLevel << endl;

	tv1.channelUpBy2();
	cout << "tv1's channel is " << tv1.channel << endl;
	tv1.channelUp(40);
	cout << "tv1's channel is " << tv1.channel << endl;
	tv1.channelUp(100);
	cout << "tv1's channel is " << tv1.channel << endl << endl;

	tv1.channelDown();
	cout << "tv1's channel is " << tv1.channel << endl;
	tv1.channelDownBy2();
	cout << "tv1's channel is " << tv1.channel << endl;
	tv1.channelDown(80);
	cout << "tv1's channel is " << tv1.channel << endl << endl;

	TV tv1_1(2, 3);
	cout << "tv1_1's channel is " << tv1_1.channel << endl;
	tv1_1.channelUp(10);
	cout << "tv1_1's channel is " << tv1_1.channel << endl;
	tv1_1.turnOff();
	tv1_1.channelUp(); //on = false이므로 channelUp()이 동작되지 않음
	cout << "tv1_1's channel is " << tv1_1.channel << endl << endl;	

	TV tv2;
	tv2.turnOn();
	tv2.channelUp();
	tv2.channelUp();
	tv2.volumUp();
	cout << "tv2's channel is " << tv2.channel
		<< " and volume level is " << tv2.volumeLevel << endl; 

	return 0;
}