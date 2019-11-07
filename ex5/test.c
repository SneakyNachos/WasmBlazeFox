#include <stdio.h>
double add(double a, double b){
	const double g = 0x414141414141;
	//const double h = 0x424242424242;
	double h = 0;
	*(long long *)&h = 0x02eb909090909090;
	double x = 0;
	*(long long *)&x = 0x9090909090909090;
	double y = 0;
	*(long long *)&y = 0x9090909090909090;
	double z = 0;
	*(long long *)&z = 0x9090909090909090;
	double p = 0;
	*(long long *)&p = 0x9090909090909090;
	const double i = 0x434343434343;
	double c = 0;
	c = a + b;
	c = c + g;
	c = c + h;
	c = c + x;
	c = c + y;
	c = c + z;
	c = c + p;
	c = c + i;
	return c;
}
