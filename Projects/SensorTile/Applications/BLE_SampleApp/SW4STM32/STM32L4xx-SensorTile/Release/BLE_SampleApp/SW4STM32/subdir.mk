################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
C:/Users/Alain/Desktop/1/STSW-STLKT01_V2.1.1/Projects/SensorTile/Applications/BLE_SampleApp/SW4STM32/startup_stm32l476xx.s 

C_SRCS += \
C:/Users/Alain/Desktop/1/STSW-STLKT01_V2.1.1/Projects/SensorTile/Applications/BLE_SampleApp/Src/syscalls.c 

OBJS += \
./BLE_SampleApp/SW4STM32/startup_stm32l476xx.o \
./BLE_SampleApp/SW4STM32/syscalls.o 

C_DEPS += \
./BLE_SampleApp/SW4STM32/syscalls.d 


# Each subdirectory must supply rules for building sources it contributes
BLE_SampleApp/SW4STM32/startup_stm32l476xx.o: C:/Users/Alain/Desktop/1/STSW-STLKT01_V2.1.1/Projects/SensorTile/Applications/BLE_SampleApp/SW4STM32/startup_stm32l476xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/Components/hts221 -I../../../Inc -x assembler-with-cpp --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
BLE_SampleApp/SW4STM32/syscalls.o: C:/Users/Alain/Desktop/1/STSW-STLKT01_V2.1.1/Projects/SensorTile/Applications/BLE_SampleApp/Src/syscalls.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DSTM32_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I../../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/Components/hts221 -I../../../../../../../Drivers/BSP/Components/lps22hb -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Middlewares/ST/BlueNRG-MS/includes -I../../../../../../../Middlewares/ST/BlueNRG-MS/utils -I../../../../../../../Middlewares/ST/BlueNRG-MS/hci/hci_tl_patterns/Basic -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"BLE_SampleApp/SW4STM32/syscalls.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

