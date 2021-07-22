################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/src/main.c \
../src/src/xhnn_fpga.c \
../src/src/xhnn_fpga_linux.c \
../src/src/xhnn_fpga_sinit.c 

OBJS += \
./src/src/main.o \
./src/src/xhnn_fpga.o \
./src/src/xhnn_fpga_linux.o \
./src/src/xhnn_fpga_sinit.o 

C_DEPS += \
./src/src/main.d \
./src/src/xhnn_fpga.d \
./src/src/xhnn_fpga_linux.d \
./src/src/xhnn_fpga_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
src/src/%.o: ../src/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/aguss/Desktop/hnn_fpga/hnn_fpga/hnn_fpga_wrapper/export/hnn_fpga_wrapper/sw/hnn_fpga_wrapper/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


