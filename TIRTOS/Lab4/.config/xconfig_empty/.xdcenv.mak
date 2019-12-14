#
_XDCBUILDCOUNT = 
ifneq (,$(findstring path,$(_USEXDCENV_)))
override XDCPATH = /Users/alexchen/ti/tirtos_tivac_2_16_00_08/packages;/Users/alexchen/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages;/Users/alexchen/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages;/Users/alexchen/ti/tirtos_tivac_2_16_00_08/products/ndk_2_25_00_09/packages;/Users/alexchen/ti/tirtos_tivac_2_16_00_08/products/uia_2_00_05_50/packages;/Users/alexchen/ti/tirtos_tivac_2_16_00_08/products/ns_1_11_00_10/packages;/Volumes/Untitled/2019Fall/2019Fall/TIRTOS/Lab4/.config
override XDCROOT = /Users/alexchen/Documents/ti/xdctools_3_55_02_22_core
override XDCBUILDCFG = ./config.bld
endif
ifneq (,$(findstring args,$(_USEXDCENV_)))
override XDCARGS = 
override XDCTARGETS = 
endif
#
ifeq (0,1)
PKGPATH = /Users/alexchen/ti/tirtos_tivac_2_16_00_08/packages;/Users/alexchen/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages;/Users/alexchen/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages;/Users/alexchen/ti/tirtos_tivac_2_16_00_08/products/ndk_2_25_00_09/packages;/Users/alexchen/ti/tirtos_tivac_2_16_00_08/products/uia_2_00_05_50/packages;/Users/alexchen/ti/tirtos_tivac_2_16_00_08/products/ns_1_11_00_10/packages;/Volumes/Untitled/2019Fall/2019Fall/TIRTOS/Lab4/.config;/Users/alexchen/Documents/ti/xdctools_3_55_02_22_core/packages;..
HOSTOS = MacOS
endif
