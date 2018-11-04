#include "shubh_i2c.h" 

/* Fucking start of the program man. */
void main() {

	int rev;
	char *device;

	printf("This is going to be fun.\n");

	// Check pi device.
	rev = piGpioLayout ();
	printf("Revison is :: %d.\n", rev);
	if (rev == 1)
		device = "/dev/i2c-0";
	else 
		device = "/dev/i2c-1";

	return;
}
