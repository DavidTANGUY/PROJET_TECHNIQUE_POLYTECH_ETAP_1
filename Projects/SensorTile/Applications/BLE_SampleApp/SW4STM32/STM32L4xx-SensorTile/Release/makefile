################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Middlewares/X-CUBE-BLE1_BlueNRG-MS/utils/subdir.mk
-include Middlewares/X-CUBE-BLE1_BlueNRG-MS/hci/hci_tl_patterns/Basic/subdir.mk
-include Middlewares/X-CUBE-BLE1_BlueNRG-MS/hci/controller/subdir.mk
-include Middlewares/X-CUBE-BLE1_BlueNRG-MS/hci/subdir.mk
-include Middlewares/STM32_USBD_Library/Core/subdir.mk
-include Middlewares/STM32_USBD_Library/Class/CDC/subdir.mk
-include Drivers/STM32L4xx_HAL_Driver/subdir.mk
-include Drivers/CMSIS/subdir.mk
-include Drivers/BSP/SensorTile/subdir.mk
-include Drivers/BSP/Components/subdir.mk
-include BLE_SampleApp/User/subdir.mk
-include BLE_SampleApp/SW4STM32/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
STSW-STLKT01-BLE_SampleApp.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
STSW-STLKT01-BLE_SampleApp.list \


# All Target
all:
	+@make --no-print-directory main-build && make --no-print-directory post-build

# Main-build Target
main-build: STSW-STLKT01-BLE_SampleApp.elf secondary-outputs

# Tool invocations
STSW-STLKT01-BLE_SampleApp.elf: $(OBJS) $(USER_OBJS) ../LinkerScript.ld
	arm-none-eabi-gcc -o "STSW-STLKT01-BLE_SampleApp.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"../LinkerScript.ld" -Wl,-Map="STSW-STLKT01-BLE_SampleApp.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

STSW-STLKT01-BLE_SampleApp.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "STSW-STLKT01-BLE_SampleApp.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

post-build:
	arm-none-eabi-objcopy -O binary "STSW-STLKT01-BLE_SampleApp.elf" "BLE_SampleApp.bin"
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
