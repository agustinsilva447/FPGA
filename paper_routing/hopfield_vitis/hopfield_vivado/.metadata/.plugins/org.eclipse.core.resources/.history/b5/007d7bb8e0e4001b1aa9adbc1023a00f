#include "xhopfield_vitis_hw.h"
#include "xhopfield_vitis.h"
#include "xil_printf.h"
#include "sleep.h"
#include <stdio.h>
#include <math.h>
#include <xtime_l.h>
#include <time.h>
#include <xparameters.h>

unsigned int float_to_u32(float val)
{
	unsigned int result;
	union float_bytes{
		float v;
		unsigned char bytes[4];
	} data;
	data.v = val;
	result = (data.bytes[3]<<24) + (data.bytes[2]<<16) + (data.bytes[1]<<8) + (data.bytes[0]);
	return result;
}

float u32_to_float(unsigned int val)
{
	union{
		float val_float;
		unsigned char bytes[4];
	} data;
	data.bytes[3] = (val >> (8 * 3)) & 0xff;
	data.bytes[2] = (val >> (8 * 2)) & 0xff;
	data.bytes[1] = (val >> (8 * 1)) & 0xff;
	data.bytes[0] = (val >> (8 * 0)) & 0xff;
	return data.val_float;
}

int main()
{
	XTime tStart;
	XTime tEnd;
	return 0;
}
