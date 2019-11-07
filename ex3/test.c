#include <stdio.h>
double add(double a, double b){
	const double g = 0x414141414141;
	//const double h = 0x424242424242;
	double h = 0;
	*(long long *)&h = 0x02eb909090909090;
	const double i = 0x434343434343;
	double c = 0;
	c = a + b + g + h + i;
	return c;
}
