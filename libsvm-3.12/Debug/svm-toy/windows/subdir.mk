################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../svm-toy/windows/svm-toy.cpp 

OBJS += \
./svm-toy/windows/svm-toy.o 

CPP_DEPS += \
./svm-toy/windows/svm-toy.d 


# Each subdirectory must supply rules for building sources it contributes
svm-toy/windows/%.o: ../svm-toy/windows/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


