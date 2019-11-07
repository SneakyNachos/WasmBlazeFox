#include <stdio.h>
double add(double a, double b){
	const double g = 0x414141414141;
	//const double h = 0x424242424242;
	double h = 0;
	*(long long *)&h = 0x0d35e9b7eb81485b;
	double x = 0;
	*(long long *)&x = 0x4810e771f0c38148;
	double y = 0;
	*(long long *)&y = 0x087600e981480b8b;
	double z = 0;
	*(long long *)&z = 0x00045390c1814800;
	double p = 0;
	*(long long *)&p = 0xd1ffc031485f06eb;
	double t = 0;
	*(long long *)&t = 0x6f6e67fffffff5e8;
	double n = 0;
	*(long long *)&n = 0x75636c61632d656d;
	double m = 0;
	*(long long *)&m = 0x000000726f74616c;
	double o = 0;
	*(long long *)&o = 0x0000000000000000;
	const double i = 0x434343434343;
	double c = 0;
	c = a + b;
	c = c + g;
	c = c + h;
	c = c + x;
	c = c + y;
	c = c + z;
	c = c + p;
	c = c + t + n + m + o + i;
	return c;
}
