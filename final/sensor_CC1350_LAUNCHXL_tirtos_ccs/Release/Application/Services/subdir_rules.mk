################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
Application/Services/%.obj: ../Application/Services/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/bin/armcl" --cmd_file="C:/Users/Administrator/workspace_v9_2/sensor_CC1350_LAUNCHXL_tirtos_ccs/Application/Defines/sensor.opts"  -mv7M3 --code_state=16 --float_support=none -me -O4 --opt_for_speed=0 --include_path="C:/Users/Administrator/workspace_v9_2/sensor_CC1350_LAUNCHXL_tirtos_ccs" --include_path="C:/Users/Administrator/workspace_v9_2/sensor_CC1350_LAUNCHXL_tirtos_ccs/Application" --include_path="C:/Users/Administrator/workspace_v9_2/sensor_CC1350_LAUNCHXL_tirtos_ccs/Application/Services" --include_path="C:/Users/Administrator/workspace_v9_2/sensor_CC1350_LAUNCHXL_tirtos_ccs/Application/LaunchPad" --include_path="C:/Users/Administrator/workspace_v9_2/sensor_CC1350_LAUNCHXL_tirtos_ccs/Application/MAC/HAL/common" --include_path="C:/Users/Administrator/workspace_v9_2/sensor_CC1350_LAUNCHXL_tirtos_ccs/Application/MAC/HAL/target" --include_path="C:/Users/Administrator/workspace_v9_2/sensor_CC1350_LAUNCHXL_tirtos_ccs/Application/MAC/HighLevel" --include_path="C:/Users/Administrator/workspace_v9_2/sensor_CC1350_LAUNCHXL_tirtos_ccs/Application/MAC/LowLevel" --include_path="C:/Users/Administrator/workspace_v9_2/sensor_CC1350_LAUNCHXL_tirtos_ccs/Application/osal_port" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/apps" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/boards" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/osal_port" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/boards/subg" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/util" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/inc" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/stack/src" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/stack/tirtos/inc" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/heapmgr" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/hal/src/inc" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/hal/src/target/_common" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/hal/src/target/_common/cc13xx" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/osal/src/inc" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/aes" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/appasrt" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/saddr" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/sdata" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/fh" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/high_level" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/inc" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/rom" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/inc/cc13xx" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/low_level/cc13xx" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/tracer" --include_path="C:/Users/Administrator/workspace_v9_2/sensor_CC1350_LAUNCHXL_tirtos_ccs/Application/subg" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/apps/sensor" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/apps/sensor/subg" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/devices/cc13x0" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/devices/cc13x0/inc" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/devices/cc13x0/driverlib" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/boards/CC13X0_LAUNCHXL" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/boards/CC1310_CC1190" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/low_level/cc13xx/subg" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/nv/" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/nv/cc26xx" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/posix/ccs" --include_path="C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include" --define=TEMP_SENSOR --define=Board_EXCLUDE_NVS_EXTERNAL_FLASH --define=DeviceFamily_CC13X0 --define=SET_CCFG_BL_CONFIG_BL_LEVEL=0x00 --define=SET_CCFG_BL_CONFIG_BL_ENABLE=0xC5 --define=SET_CCFG_BL_CONFIG_BL_PIN_NUMBER=0x0D --define=SET_CCFG_BL_CONFIG_BOOTLOADER_ENABLE=0xC5 -g --c99 --plain_char=unsigned --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --embedded_constants=on --unaligned_access=on --enum_type=packed --wchar_t=16 --common=on --fp_reassoc=off --sat_reassoc=off --preproc_with_compile --preproc_dependency="Application/Services/$(basename $(<F)).d_raw" --obj_directory="Application/Services" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


