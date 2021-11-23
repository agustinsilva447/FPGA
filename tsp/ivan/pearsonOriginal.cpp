#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include "hls_math.h"
#include <math.h>
#include <ap_fixed.h>

typedef ap_axis<16,5,5,6> intSdCh;
typedef ap_fixed<16, 5> dataType;
typedef ap_fixed<32, 5> dataTypeSquared;

#define BUFFER_SIZE 32
#define N_COEF BUFFER_SIZE

const dataTypeSquared scalingFactor = hls::sqrt(N_COEF - 1);

void pearsonOriginal(hls::stream<intSdCh> &dataStream,
		hls::stream<intSdCh> &outStream,
		volatile dataType coef[N_COEF]){
#pragma HLS ARRAY_PARTITION variable=coef dim=1 complete

#pragma HLS INTERFACE axis port=dataStream
#pragma HLS INTERFACE axis port=outStream
#pragma HLS INTERFACE s_axilite port=coef bundle=CTRL
#pragma HLS INTERFACE ap_ctrl_none port=return

	//Sliding window
	dataType currentX[N_COEF];
#pragma HLS ARRAY_PARTITION variable=currentX dim=1 complete
	intSdCh x, outVal;
	static unsigned int i; //Used as a counter
	dataTypeSquared sd; //Standard deviation

	static dataType currentR = 0;
	static dataType coefValues = coef;

	//Processing incoming data from AXI-stream
	pearsonLoop:for(i = 0; i < N_COEF - 1; i++){
#pragma HLS PIPELINE

		//Compute mean value o stream
		//within the current processing sliding window
		currentX[i + 1] = currentX[i];
		static dataTypeSquared xAvg = 0;
		x = dataStream.read();
		currentX[0] = x.data;

		pearsonAvgLoop:for(unsigned int j = 0; j < N_COEF; j++){
			xAvg += currentX[j];
		}
		xAvg /= N_COEF;


		sd = 0;
		pearsonSdLoop:for(unsigned int j = 0; j < N_COEF; j++){
			sd += (currentX[j] - xAvg)*(currentX[j] - xAvg);
		}
		sd = hls::sqrt(sd);


		pearsonRLoop:for(unsigned int j = 0; j < N_COEF; j++){
			currentR = coefValues[j] * (currentX[j] - xAvg) / sd;
		}
		currentR /= scalingFactor;
	}

	outVal.data = currentR;
	outStream.write(outVal);

}
