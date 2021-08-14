################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/src/main.c \
../src/src/xvqftaxibus.c \
../src/src/xvqftaxibus_linux.c \
../src/src/xvqftaxibus_sinit.c 

OBJS += \
./src/src/main.o \
./src/src/xvqftaxibus.o \
./src/src/xvqftaxibus_linux.o \
./src/src/xvqftaxibus_sinit.o 

C_DEPS += \
./src/src/main.d \
./src/src/xvqftaxibus.d \
./src/src/xvqftaxibus_linux.d \
./src/src/xvqftaxibus_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
src/src/%.o: ../src/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -IC:/Users/aguss/Desktop/Github/FPGA/ultrascale/VQFTAXIBUS/VQFTAXIBUS/VQFTAXIBUS_wrapper/export/VQFTAXIBUS_wrapper/sw/VQFTAXIBUS_wrapper/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


