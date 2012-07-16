################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../matlab/libsvmread.c \
../matlab/libsvmwrite.c \
../matlab/svm_model_matlab.c \
../matlab/svmpredict.c \
../matlab/svmtrain.c 

OBJS += \
./matlab/libsvmread.o \
./matlab/libsvmwrite.o \
./matlab/svm_model_matlab.o \
./matlab/svmpredict.o \
./matlab/svmtrain.o 

C_DEPS += \
./matlab/libsvmread.d \
./matlab/libsvmwrite.d \
./matlab/svm_model_matlab.d \
./matlab/svmpredict.d \
./matlab/svmtrain.d 


# Each subdirectory must supply rules for building sources it contributes
matlab/%.o: ../matlab/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


