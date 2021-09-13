#include <iostream>
#include "StackOfStrings.h"
#include <sstream>
using namespace std;

int main()
{
	StackOfStrings stack;
	stringstream ss;

	for (int i = 0; i < 10; i++)
	{
		ss << "STR" << i;
		stack.push(ss.str());
		ss.str("");
	}
		

	while (!stack.isEmpty())
		cout << stack.pop() << " ";

	return 0;
}