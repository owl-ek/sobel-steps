#!lua


-- A solution contains projects, and defines the available configurations
solution "sobel"
   configurations { "Debug", "Release" }

   -- A project defines one build target
   project "sobel-host"
		kind "ConsoleApp"
		language "C++"
		files { "**.h", "../src_host/*.cpp"}
		links { "hal-mb7707silent-x86.lib","mb7707load.lib","vshell.lib" } 
		includedirs { "$(HAL)/include","$(VSHELL)/include"}	  
		libdirs { "$(mb7707)/libload","$(HAL)/lib","$(VSHELL)/lib"}

		configuration "Debug"
			defines { "DEBUG" }
			symbols  "On" 

		configuration "Release"
			defines { "NDEBUG" }
			symbols  "Off" 
		 
		 
	project "sobel-target"
		kind "Makefile"
		files { "../src_target/*.cpp","../../src/nm/*.*","../../src/common/*.cpp","Makefile","*.cfg"}
		includedirs { "$(HAL)/include","$(NMPP)/include","../../src/common"}	  
		
		configuration "Debug"
			buildcommands 	{"make DEBUG=y 2>.make & iconv -f cp1251 -t cp866 .make "}
			rebuildcommands {"make -B DEBUG=y 2>.make & iconv -f cp1251 -t cp866 .make "}
			cleancommands 	{"make clean "}
		   
		configuration "Release"
			buildcommands 	{"make 2>.make & iconv -f cp1251 -t cp866 .make "}
			rebuildcommands {"make -B 2>.make & iconv -f cp1251 -t cp866 .make "}
			cleancommands 	{"make clean "}		   