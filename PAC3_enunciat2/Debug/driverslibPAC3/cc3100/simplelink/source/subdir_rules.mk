################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
driverslibPAC3/cc3100/simplelink/source/device.obj: /Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/source/device.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"/Applications/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="/Applications/ti/ccsv8/ccs_base/arm/include" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/freertos/inc" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/freertos/cortex-m4" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/board" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/oslib" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/sensors" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/include" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/source" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cmsis" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/sntp" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/inc" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/msp432" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_cc3100_boosterpack" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_edu_boosterpack" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_msp432_launchpad" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/PAC3_enunciat2" --include_path="/Applications/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/include" --include_path="/Applications/ti/ccsv8/ccs_base/arm/include/CMSIS" --define=__MSP432P401R__ --define=ARM_MATH_CM4 --define=TARGET_IS_MSP432P4XX --define=ccs -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="driverslibPAC3/cc3100/simplelink/source/$(basename $(<F)).d_raw" --obj_directory="driverslibPAC3/cc3100/simplelink/source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

driverslibPAC3/cc3100/simplelink/source/driver.obj: /Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/source/driver.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"/Applications/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="/Applications/ti/ccsv8/ccs_base/arm/include" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/freertos/inc" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/freertos/cortex-m4" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/board" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/oslib" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/sensors" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/include" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/source" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cmsis" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/sntp" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/inc" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/msp432" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_cc3100_boosterpack" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_edu_boosterpack" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_msp432_launchpad" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/PAC3_enunciat2" --include_path="/Applications/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/include" --include_path="/Applications/ti/ccsv8/ccs_base/arm/include/CMSIS" --define=__MSP432P401R__ --define=ARM_MATH_CM4 --define=TARGET_IS_MSP432P4XX --define=ccs -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="driverslibPAC3/cc3100/simplelink/source/$(basename $(<F)).d_raw" --obj_directory="driverslibPAC3/cc3100/simplelink/source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

driverslibPAC3/cc3100/simplelink/source/flowcont.obj: /Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/source/flowcont.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"/Applications/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="/Applications/ti/ccsv8/ccs_base/arm/include" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/freertos/inc" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/freertos/cortex-m4" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/board" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/oslib" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/sensors" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/include" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/source" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cmsis" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/sntp" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/inc" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/msp432" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_cc3100_boosterpack" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_edu_boosterpack" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_msp432_launchpad" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/PAC3_enunciat2" --include_path="/Applications/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/include" --include_path="/Applications/ti/ccsv8/ccs_base/arm/include/CMSIS" --define=__MSP432P401R__ --define=ARM_MATH_CM4 --define=TARGET_IS_MSP432P4XX --define=ccs -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="driverslibPAC3/cc3100/simplelink/source/$(basename $(<F)).d_raw" --obj_directory="driverslibPAC3/cc3100/simplelink/source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

driverslibPAC3/cc3100/simplelink/source/fs.obj: /Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/source/fs.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"/Applications/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="/Applications/ti/ccsv8/ccs_base/arm/include" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/freertos/inc" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/freertos/cortex-m4" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/board" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/oslib" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/sensors" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/include" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/source" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cmsis" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/sntp" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/inc" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/msp432" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_cc3100_boosterpack" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_edu_boosterpack" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_msp432_launchpad" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/PAC3_enunciat2" --include_path="/Applications/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/include" --include_path="/Applications/ti/ccsv8/ccs_base/arm/include/CMSIS" --define=__MSP432P401R__ --define=ARM_MATH_CM4 --define=TARGET_IS_MSP432P4XX --define=ccs -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="driverslibPAC3/cc3100/simplelink/source/$(basename $(<F)).d_raw" --obj_directory="driverslibPAC3/cc3100/simplelink/source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

driverslibPAC3/cc3100/simplelink/source/netapp.obj: /Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/source/netapp.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"/Applications/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="/Applications/ti/ccsv8/ccs_base/arm/include" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/freertos/inc" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/freertos/cortex-m4" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/board" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/oslib" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/sensors" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/include" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/source" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cmsis" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/sntp" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/inc" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/msp432" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_cc3100_boosterpack" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_edu_boosterpack" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_msp432_launchpad" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/PAC3_enunciat2" --include_path="/Applications/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/include" --include_path="/Applications/ti/ccsv8/ccs_base/arm/include/CMSIS" --define=__MSP432P401R__ --define=ARM_MATH_CM4 --define=TARGET_IS_MSP432P4XX --define=ccs -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="driverslibPAC3/cc3100/simplelink/source/$(basename $(<F)).d_raw" --obj_directory="driverslibPAC3/cc3100/simplelink/source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

driverslibPAC3/cc3100/simplelink/source/netcfg.obj: /Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/source/netcfg.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"/Applications/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="/Applications/ti/ccsv8/ccs_base/arm/include" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/freertos/inc" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/freertos/cortex-m4" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/board" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/oslib" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/sensors" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/include" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/source" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cmsis" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/sntp" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/inc" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/msp432" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_cc3100_boosterpack" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_edu_boosterpack" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_msp432_launchpad" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/PAC3_enunciat2" --include_path="/Applications/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/include" --include_path="/Applications/ti/ccsv8/ccs_base/arm/include/CMSIS" --define=__MSP432P401R__ --define=ARM_MATH_CM4 --define=TARGET_IS_MSP432P4XX --define=ccs -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="driverslibPAC3/cc3100/simplelink/source/$(basename $(<F)).d_raw" --obj_directory="driverslibPAC3/cc3100/simplelink/source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

driverslibPAC3/cc3100/simplelink/source/socket.obj: /Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/source/socket.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"/Applications/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="/Applications/ti/ccsv8/ccs_base/arm/include" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/freertos/inc" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/freertos/cortex-m4" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/board" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/oslib" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/sensors" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/include" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/source" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cmsis" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/sntp" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/inc" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/msp432" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_cc3100_boosterpack" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_edu_boosterpack" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_msp432_launchpad" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/PAC3_enunciat2" --include_path="/Applications/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/include" --include_path="/Applications/ti/ccsv8/ccs_base/arm/include/CMSIS" --define=__MSP432P401R__ --define=ARM_MATH_CM4 --define=TARGET_IS_MSP432P4XX --define=ccs -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="driverslibPAC3/cc3100/simplelink/source/$(basename $(<F)).d_raw" --obj_directory="driverslibPAC3/cc3100/simplelink/source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

driverslibPAC3/cc3100/simplelink/source/spawn.obj: /Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/source/spawn.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"/Applications/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="/Applications/ti/ccsv8/ccs_base/arm/include" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/freertos/inc" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/freertos/cortex-m4" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/board" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/oslib" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/sensors" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/include" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/source" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cmsis" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/sntp" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/inc" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/msp432" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_cc3100_boosterpack" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_edu_boosterpack" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_msp432_launchpad" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/PAC3_enunciat2" --include_path="/Applications/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/include" --include_path="/Applications/ti/ccsv8/ccs_base/arm/include/CMSIS" --define=__MSP432P401R__ --define=ARM_MATH_CM4 --define=TARGET_IS_MSP432P4XX --define=ccs -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="driverslibPAC3/cc3100/simplelink/source/$(basename $(<F)).d_raw" --obj_directory="driverslibPAC3/cc3100/simplelink/source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

driverslibPAC3/cc3100/simplelink/source/wlan.obj: /Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/source/wlan.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"/Applications/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="/Applications/ti/ccsv8/ccs_base/arm/include" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/freertos/inc" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/freertos/cortex-m4" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/board" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/oslib" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/sensors" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/include" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cc3100/simplelink/source" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/cmsis" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/sntp" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/inc" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/msp432" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_cc3100_boosterpack" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_edu_boosterpack" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/driverslibPAC3/ti_msp432_launchpad" --include_path="/Users/randa/Desktop/SistemesEncastats/FreeRTOSSNTP/PAC3_enunciat2" --include_path="/Applications/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.3.LTS/include" --include_path="/Applications/ti/ccsv8/ccs_base/arm/include/CMSIS" --define=__MSP432P401R__ --define=ARM_MATH_CM4 --define=TARGET_IS_MSP432P4XX --define=ccs -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="driverslibPAC3/cc3100/simplelink/source/$(basename $(<F)).d_raw" --obj_directory="driverslibPAC3/cc3100/simplelink/source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


