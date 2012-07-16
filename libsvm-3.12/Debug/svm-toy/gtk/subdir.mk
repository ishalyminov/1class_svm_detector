################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../svm-toy/gtk/callbacks.o \
../svm-toy/gtk/interface.o \
../svm-toy/gtk/main.o 

CPP_SRCS += \
../svm-toy/gtk/callbacks.cpp 

C_SRCS += \
../svm-toy/gtk/interface.c \
../svm-toy/gtk/main.c 

OBJS += \
./svm-toy/gtk/callbacks.o \
./svm-toy/gtk/interface.o \
./svm-toy/gtk/main.o 

C_DEPS += \
./svm-toy/gtk/interface.d \
./svm-toy/gtk/main.d 

CPP_DEPS += \
./svm-toy/gtk/callbacks.d 


# Each subdirectory must supply rules for building sources it contributes
svm-toy/gtk/%.o: ../svm-toy/gtk/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

svm-toy/gtk/%.o: ../svm-toy/gtk/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


