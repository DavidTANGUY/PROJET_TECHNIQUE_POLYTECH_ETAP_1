################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Alain/Desktop/1/STSW-STLKT01_V2.1.1/Drivers/BSP/SensorTile/SensorTile.c \
C:/Users/Alain/Desktop/1/STSW-STLKT01_V2.1.1/Drivers/BSP/SensorTile/SensorTile_bus.c \
C:/Users/Alain/Desktop/1/STSW-STLKT01_V2.1.1/Drivers/BSP/SensorTile/SensorTile_env_sensors.c \
C:/Users/Alain/Desktop/1/STSW-STLKT01_V2.1.1/Drivers/BSP/SensorTile/SensorTile_env_sensors_ex.c 

OBJS += \
./Drivers/BSP/SensorTile/SensorTile.o \
./Drivers/BSP/SensorTile/SensorTile_bus.o \
./Drivers/BSP/SensorTile/SensorTile_env_sensors.o \
./Drivers/BSP/SensorTile/SensorTile_env_sensors_ex.o 

C_DEPS += \
./Drivers/BSP/SensorTile/SensorTile.d \
./Drivers/BSP/SensorTile/SensorTile_bus.d \
./Drivers/BSP/SensorTile/SensorTile_env_sensors.d \
./Drivers/BSP/SensorTile/SensorTile_env_sensors_ex.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/SensorTile/SensorTile.o: C:/Users/Alain/Desktop/1/STSW-STLKT01_V2.1.1/Drivers/BSP/SensorTile/SensorTile.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DSTM32_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I../../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/Components/hts221 -I../../../../../../../Drivers/BSP/Components/lps22hb -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Middlewares/ST/BlueNRG-MS/includes -I../../../../../../../Middlewares/ST/BlueNRG-MS/utils -I../../../../../../../Middlewares/ST/BlueNRG-MS/hci/hci_tl_patterns/Basic -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/SensorTile/SensorTile.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/SensorTile/SensorTile_bus.o: C:/Users/Alain/Desktop/1/STSW-STLKT01_V2.1.1/Drivers/BSP/SensorTile/SensorTile_bus.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DSTM32_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I../../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/Components/hts221 -I../../../../../../../Drivers/BSP/Components/lps22hb -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Middlewares/ST/BlueNRG-MS/includes -I../../../../../../../Middlewares/ST/BlueNRG-MS/utils -I../../../../../../../Middlewares/ST/BlueNRG-MS/hci/hci_tl_patterns/Basic -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/SensorTile/SensorTile_bus.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/SensorTile/SensorTile_env_sensors.o: C:/Users/Alain/Desktop/1/STSW-STLKT01_V2.1.1/Drivers/BSP/SensorTile/SensorTile_env_sensors.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DSTM32_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I../../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/Components/hts221 -I../../../../../../../Drivers/BSP/Components/lps22hb -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Middlewares/ST/BlueNRG-MS/includes -I../../../../../../../Middlewares/ST/BlueNRG-MS/utils -I../../../../../../../Middlewares/ST/BlueNRG-MS/hci/hci_tl_patterns/Basic -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/SensorTile/SensorTile_env_sensors.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/SensorTile/SensorTile_env_sensors_ex.o: C:/Users/Alain/Desktop/1/STSW-STLKT01_V2.1.1/Drivers/BSP/SensorTile/SensorTile_env_sensors_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DSTM32_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I../../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/Components/hts221 -I../../../../../../../Drivers/BSP/Components/lps22hb -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Middlewares/ST/BlueNRG-MS/includes -I../../../../../../../Middlewares/ST/BlueNRG-MS/utils -I../../../../../../../Middlewares/ST/BlueNRG-MS/hci/hci_tl_patterns/Basic -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/SensorTile/SensorTile_env_sensors_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

