ROOT = ../../..
include $(ROOT)/global.mk
#-include ../local.mk
HEAP ?= -heap=6384 -heap1=6384 -heap2=6384 -heap3=6384
# BUILD AND RUN MAKEFILE
# This makefile builds simple nmc-application containing single cpp-file  
# Rule 'run' executes the application on MC5103 board and stores return code in ".exitcode"  file

.SUFFIXES:


ifndef MB7707
$(error ERROR: 'MB7707' environment variable is not defined!  )
endif 


BOARD    = mb7707
PROJECT  = sobel
HOST 	 = $(PROJECT)-host
TARGET   = $(PROJECT)-target
CONFIGURATION = Debug



vs2005: $(HOST).sln $(TARGET).sln
	"$(VS80COMNTOOLS)vsvars32" && vcbuild $(HOST).sln  "$(CONFIGURATION)|Win32"
	"$(VS80COMNTOOLS)vsvars32" && vcbuild $(TARGET).sln  "$(CONFIGURATION)|Win32"
	

vs2015:	$(HOST).sln $(TARGET).sln
	"$(VS140COMNTOOLS)vsvars32" && msbuild $(HOST).sln /t:Build /p:Configuration=$(CONFIGURATION)
	"$(VS140COMNTOOLS)vsvars32" && msbuild $(TARGET).sln /t:Build /p:Configuration=$(CONFIGURATION)

	
$(HOST).sln $(TARGET).sln:	premake5.lua 
	premake5 $(MAKECMDGOALS) 

run: 
	$(MAKE) -j4 runhost runtarget  

runhost: 
	bin\debug\$(HOST)
	
runtarget: 
	bin\debug\$(TARGET)
	

	
	
include $(ROOT)/clean.mk
	