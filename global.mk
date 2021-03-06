#NMPP      = $(ROOT)
-include c:/users/user/proxy.mk
# http_proxy     = http://user:pass@proxy:80/       (for wget usage)
#https_proxy     = $(http_proxy)

export DEVPACK   =$(realpath $(ROOT)/deps/dev-pack-master)
#export DEVPACK   =$(ROOT)/deps/dev-pack-master
#export DEVPACK   =$(ROOT)/deps/dev-pack-master
#export NEURO     =$(DEVPACK)/module-nmc
export NEURO    ?=$(DEVPACK)/module-nmc
export MC5103   ?=$(DEVPACK)/module-nmc
export MC7601   ?=$(DEVPACK)/module-nmc
export MB7707   ?=$(DEVPACK)/module-nmc
export VSHELL32 ?=$(DEVPACK)/vshell32
export EDCLTOOL ?=$(DEVPACK)/edcltool-win32
export NMPP     ?=$(ROOT)/deps/nmpp-master
export VDU7707   =$(ROOT)/deps/vdu7707



ifeq ($(OS),Windows_NT)
   ROOTFS  = $(DEVPACK)/rootfs
   EASYNMC = $(DEVPACK)/nmc-utils-0.1.1/libeasynmc-nmc

   ARM_CC   = arm-linux-gnueabihf-gcc.exe
   ARM_AR   = arm-linux-gnueabihf-ar.exe
   ARM_LD   = arm-linux-gnueabihf-ld.exe

   CROSS_COMPILE=arm-linux-gnueabihf-
   
   SHELL    = cmd
   OS_FIND  = $(call BACKSLASH,$(GNUWIN32)/find)
   OS_DIFF  = $(call BACKSLASH,$(GNUWIN32)/diff)
   OS_SCP   = $(call BACKSLASH,$(GNUWIN32)/pscp)
   OS_CAT   = $(call BACKSLASH,$(GNUWIN32)/cat)
   OS_MV    = cmd /c move /Y
   OS_RM    = cmd /c del /Q
#  OS_RM    = rm -f -r
   OS_RD    = cmd /c rd /Q /S 
   OS_CP    = cp
   OS_WHICH =$(windir)/system32/where
   GNU_WGET = wget -nc --no-check-certificate --content-disposition 
   PS_WGET  = powershell  -ExecutionPolicy Bypass -file $(ROOT)\deps\wget.ps1 
   OS_WGET  = $(GNU_WGET)
#  OS_UNZIP = 7za
   PS_UNZIP = powershell  -ExecutionPolicy Bypass -file unzip.ps1 
   OS_UNZIP = unzip -u -o -q 
   OS_TODIR = -d
   OS_UNPACK= $(OS_UNZIP)
   PATH_DEP =$(NEURO)/bin;\
$(realpath $(ROOT)/deps/lua);\
$(realpath $(MC5103)/bin);\
$(realpath $(MB7707)/bin);\
$(realpath $(MC7601)/bin);\
$(realpath $(VSHELL32)/bin);\
  
  PATH    := $(PATH);$(PATH_DEP)
  
  
  define BACKSLASH
	$(subst /,\,$(1))
  endef

  MB7707_MAC ?= 1A-2B-3C-4D-5E-6F
else
  ARM_CC   = arm-module-linux-gnueabi-gcc 
  define OS_PATH
	$(1)
  endef 
  OS_DIFF  = diff   
  OS_SCP   = scp
  OS_RM    = rm -f -r
  OS_RD    = rm -d -r
  OS_WGET  = wget -nc --no-check-certificate --content-disposition 
  OS_UNZIP = unzip -u -o -q 
  OS_UNPACK= tar xvzf 
  OS_TODIR = -C
  export PATH    := $(NEURO)/bin-lnx:$(MC5103)/bin:$(MB7707)/bin:$(PATH)
  LD_LIBRARY_PATH = $(MC5103)/bin:$(MB7707)/bin
  MB7707_MAC = eth0
endif

PLATFORMS:=emu6405
ifdef MB7707
PLATFORMS += mb7707_libload
ifndef MB7707_MAC
$(error MB7707_MAC is not defiened) 
endif
endif
 
#ifdef HAVE_edcltool
#PLATFORMS += mb7707_edcltool
#ifndef MB7707_ETH
#$(error MB7707_ETH is not defiened) 
#endif
#endif 

PLATFORMS  += mc5103

ifdef MC7601
PLATFORMS += mc7601
endif 

ifdef VS80COMNTOOLS
PLATFORMS += vs80
endif 

ifdef VS120COMNTOOLS
PLATFORMS += vs13
endif

#gcc
PLATFORMS = vs80 mc5103 emu6405 mc7601

TARGET1=mc5103
TARGET2=vs80

define newline


endef	

 