################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../VQFTAXIBUS.cpp 

OBJS += \
./source/VQFTAXIBUS.o 

CPP_DEPS += \
./source/VQFTAXIBUS.d 


# Each subdirectory must supply rules for building sources it contributes
source/VQFTAXIBUS.o: C:/Users/caos1/Desktop/Tesis/Definitivo/VQFTAXIBUS/VQFTAXIBUS.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/Vivado_HLS/2016.4/include -IC:/Xilinx/Vivado_HLS/2016.4/win64/tools/auto_cc/include -IC:/Xilinx/Vivado_HLS/2016.4/include/ap_sysc -IC:/Users/caos1/Desktop/Tesis/Definitivo -IC:/Xilinx/Vivado_HLS/2016.4/win64/tools/systemc/include -IC:/Xilinx/Vivado_HLS/2016.4/include/etc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


