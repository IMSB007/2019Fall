#
_XDCBUILDCOUNT = 
ifneq (,$(findstring path,$(_USEXDCENV_)))
override XDCPATH = /Users/alexchen/ti/simplelink_cc13x0_sdk_3_20_00_23/source;/Users/alexchen/ti/simplelink_cc13x0_sdk_3_20_00_23/kernel/tirtos/packages
override XDCROOT = /Users/alexchen/Documents/ti/xdctools_3_55_02_22_core
override XDCBUILDCFG = ./config.bld
endif
ifneq (,$(findstring args,$(_USEXDCENV_)))
override XDCARGS = 
override XDCTARGETS = 
endif
#
ifeq (0,1)
PKGPATH = /Users/alexchen/ti/simplelink_cc13x0_sdk_3_20_00_23/source;/Users/alexchen/ti/simplelink_cc13x0_sdk_3_20_00_23/kernel/tirtos/packages;/Users/alexchen/Documents/ti/xdctools_3_55_02_22_core/packages;..
HOSTOS = MacOS
endif
