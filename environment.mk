NMPP             = $(ROOT)/deps/nmpp
NMPROFILER       = $(ROOT)/deps/nmprofiler
#http_proxy        = http://user:pass@proxy:80/

NEURO    = $(realpath $(ROOT))/deps/nmsdk
VSHELL32 = $(realpath $(ROOT))/deps/vshell32
MC5103   = $(realpath $(ROOT))/deps/mc5103sdk
MC7601   = $(realpath $(ROOT))/deps/mc7601sdk
MB7707   = $(realpath $(ROOT))/deps/mb7707sdk
MB7707_MAC ?= 1A-2B-3C-4D-5E-6F

PATH    := $(NEURO)/bin;$(MC5103)/bin;$(MB7707)/bin;$(MC7601)/bin;$(ROOT)/gnuwin32/bin;$(VSHELL32)/bin;$(PATH)

ifeq ($(OS),Windows_NT)
  SHELL    = cmd
  OS_RM    = del /Q
  OS_RD    = rd /Q /S 
  OS_WHICH =$(windir)/system32/where
 #OS_WGET  = wget
  OS_WGET  = powershell -file $(ROOT)/wget.ps1 
 #OS_UNZIP = unzip 
  OS_UNZIP = powershell -file $(ROOT)/unzip.ps1 
  OS_TODIR = -d
else
  OS_RM    = rm -f -r
  OS_RD    = rm -d -r
  OS_WHICH = which
  OS_WGET  = wget  
  OS_UNZIP = tar xvzf 
  OS_TODIR = -C
endif




 