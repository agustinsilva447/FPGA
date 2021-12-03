#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include "hls_math.h"
#include <math.h>
#include <ap_fixed.h>
#include "tbDataset.h"

typedef ap_axis<16,5,5,6> intSdCh;
typedef ap_fixed<16, 5> dataType;
typedef ap_fixed<32, 5> dataTypeSquared;

#define BUFFER_SIZE 32
#define N_COEF BUFFER_SIZE


void pearsonOriginal(hls::stream<intSdCh> &dataStream,
		hls::stream<intSdCh> &outStream,
		volatile dataType coef[N_COEF]);


int main(){

	hls::stream<intSdCh> dataStreamVar;
	hls::stream<intSdCh> outputStreamVar;
	dataType coeffValues[N_COEF];

	intSdCh dataIn;
	intSdCh dataOut;



	//Setup coefficients
	for(int i = 0; i < N_COEF; i++){
		coeffValues[i] = COEFFICIENTS[i];
	}

	//Shift data into HLS block stream variable
	for(int i = 0; i < BUFFER_SIZE; i++){
		dataIn.data = STIMULUS_DATA[i];
		dataIn.keep = 1;
		dataIn.strb = 1;
		dataIn.user = 1;
		dataIn.id   = 0;
		dataIn.dest = 0;

		dataStreamVar << dataIn;
	}

	//Execute HLS algorithm
	pearsonOriginal(dataStreamVar, outputStreamVar, coeffValues);


//	//Show results
//	for(int i = 0; i < BUFFER_SIZE; i++){
//		outputStreamVar.read(dataOut);
//		printf("OUT[%d] = %d\n", i, dataOut.data);
//	}




	return 0;
}
