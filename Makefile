ROOT =.
#include global.mk


$(info $(NEURO))
$(info $(PATH))

.DEFAULT_GOAL = steps

all: download install steps avi

download:
	$(MAKE) -C deps download

install:
	$(MAKE) -C deps install

avi:
	$(MAKE) -C input 

	
clean:
	$(MAKE) -C step00_easybmp_prototype/pc-model/make_vs08 clean
	$(MAKE) -C step00_easybmp_prototype/pc-model/make_vs13 clean
	$(MAKE) -C step01_easybmp_risc_8bit/pc-model/make_vs08  clean
	$(MAKE) -C step01_easybmp_risc_8bit/pc-model/make_vs13  clean
	$(MAKE) -C step01_easybmp_risc_8bit/mb7707/nm  clean
	$(MAKE) -C step01_easybmp_risc_8bit/standalone/mb7707 clean
	$(MAKE) -C step01_easybmp_risc_8bit/standalone/mc5103 clean
	$(MAKE) -C step01_easybmp_risc_8bit/mb7707/pc/make_vs08  clean
	$(MAKE) -C step01_easybmp_risc_8bit/mb7707/pc/make_vs13  clean
	$(MAKE) -C step01_easybmp_risc_8bit/mc5103/nm  clean
	$(MAKE) -C step01_easybmp_risc_8bit/mc5103/pc/make_vs08  clean
	$(MAKE) -C step01_easybmp_risc_8bit/mc5103/pc/make_vs13  clean
	$(MAKE) -C step01_easybmp_risc_8bit/mc7601/nm  clean
	$(MAKE) -C step01_easybmp_risc_8bit/mc7601/pc/make_vs08  clean
	$(MAKE) -C step01_easybmp_risc_8bit/mc7601/pc/make_vs13  clean
	$(MAKE) -C step02_easybmp_risc_32bit/pc-model/make_vs08  clean
	$(MAKE) -C step02_easybmp_risc_32bit/pc-model/make_vs13  clean
	$(MAKE) -C step02_easybmp_risc_32bit/mb7707/nm  clean
	$(MAKE) -C step02_easybmp_risc_32bit/standalone/mb7707 clean
	$(MAKE) -C step02_easybmp_risc_32bit/standalone/mc5103 clean
	$(MAKE) -C step02_easybmp_risc_32bit/mb7707/pc/make_vs08  clean
	$(MAKE) -C step02_easybmp_risc_32bit/mb7707/pc/make_vs13  clean
	$(MAKE) -C step02_easybmp_risc_32bit/mc5103/nm  clean
	$(MAKE) -C step02_easybmp_risc_32bit/mc5103/pc/make_vs08  clean
	$(MAKE) -C step02_easybmp_risc_32bit/mc5103/pc/make_vs13  clean
	$(MAKE) -C step02_easybmp_risc_32bit/mc7601/nm  clean
	$(MAKE) -C step02_easybmp_risc_32bit/mc7601/pc/make_vs08  clean
	$(MAKE) -C step02_easybmp_risc_32bit/mc7601/pc/make_vs13  clean
	$(MAKE) -C step03_easybmp_nmpp/standalone/mb7707 clean
	$(MAKE) -C step03_easybmp_nmpp/standalone/mc5103 clean
	$(MAKE) -C step03_easybmp_nmpp/mb7707/nm  clean
	$(MAKE) -C step03_easybmp_nmpp/mb7707/pc/make_vs08  clean
	$(MAKE) -C step03_easybmp_nmpp/mb7707/pc/make_vs13  clean
	$(MAKE) -C step03_easybmp_nmpp/mc5103/nm  clean
	$(MAKE) -C step03_easybmp_nmpp/mc5103/pc/make_vs08  clean
	$(MAKE) -C step03_easybmp_nmpp/mc5103/pc/make_vs13  clean
	$(MAKE) -C step03_easybmp_nmpp/pc-model/make_vs08  clean
	$(MAKE) -C step03_easybmp_nmpp/pc-model/make_vs13  clean
	$(MAKE) -C step04_vshell_nmpp/mb7707/nm  clean
	$(MAKE) -C step04_vshell_nmpp/mb7707/pc/make_vs08  clean
	$(MAKE) -C step04_vshell_nmpp/mb7707/pc/make_vs13  clean
	$(MAKE) -C step04_vshell_nmpp/mc5103/nm  clean
	$(MAKE) -C step04_vshell_nmpp/mc5103/pc/make_vs08  clean
	$(MAKE) -C step04_vshell_nmpp/mc5103/pc/make_vs13  clean
	$(MAKE) -C step04_vshell_nmpp/pc-model/make_vs08  clean
	$(MAKE) -C step04_vshell_nmpp/pc-model/make_vs13  clean
	$(MAKE) -C step05_filter_optimization/standalone/mb7707 clean
	$(MAKE) -C step05_filter_optimization/standalone/mc5103	 clean
	$(MAKE) -C step05_filter_optimization/mb7707/nm  clean
	$(MAKE) -C step05_filter_optimization/mb7707/pc/make_vs08  clean
	$(MAKE) -C step05_filter_optimization/mb7707/pc/make_vs13  clean
	$(MAKE) -C step05_filter_optimization/mc5103/nm  clean
	$(MAKE) -C step05_filter_optimization/mc5103/pc/make_vs08  clean
	$(MAKE) -C step05_filter_optimization/mc5103/pc/make_vs13  clean
	$(MAKE) -C step05_filter_optimization/pc-model/make_vs08  clean
	$(MAKE) -C step05_filter_optimization/pc-model/make_vs13  clean
	$(MAKE) -C step06_class/standalone/mb7707 	 clean
	$(MAKE) -C step06_class/standalone/mc5103 	 clean
	$(MAKE) -C step06_class/mb7707/nm  clean
	$(MAKE) -C step06_class/mb7707/pc/make_vs08  clean
	$(MAKE) -C step06_class/mb7707/pc/make_vs13  clean
	$(MAKE) -C step06_class/mc5103/nm  clean
	$(MAKE) -C step06_class/mc5103/pc/make_vs08  clean
	$(MAKE) -C step06_class/mc5103/pc/make_vs13  clean
	$(MAKE) -C step06_class/pc-model/make_vs08  clean
	$(MAKE) -C step06_class/pc-model/make_vs13  clean
	$(MAKE) -C step07_internal_memory/standalone/mb7707 clean
	$(MAKE) -C step07_internal_memory/standalone/mc5103 clean
	$(MAKE) -C step07_internal_memory/mb7707/nm  clean
	$(MAKE) -C step07_internal_memory/mb7707/pc/make_vs08  clean
	$(MAKE) -C step07_internal_memory/mb7707/pc/make_vs13  clean
	$(MAKE) -C step07_internal_memory/mc5103/nm  clean
	$(MAKE) -C step07_internal_memory/mc5103/pc/make_vs08  clean
	$(MAKE) -C step07_internal_memory/mc5103/pc/make_vs13  clean
	$(MAKE) -C step07_internal_memory/pc-model/make_vs08  clean
	$(MAKE) -C step08_edge_removal/standalone/mb7707 clean
	$(MAKE) -C step08_edge_removal/standalone/mc5103 clean
	$(MAKE) -C step08_edge_removal/mb7707/nm  clean
	$(MAKE) -C step08_edge_removal/mb7707/pc/make_vs08  clean
	$(MAKE) -C step08_edge_removal/mb7707/pc/make_vs13  clean
	$(MAKE) -C step08_edge_removal/mc5103/nm  clean
	$(MAKE) -C step08_edge_removal/mc5103/pc/make_vs08  clean
	$(MAKE) -C step08_edge_removal/mc5103/pc/make_vs13  clean
	$(MAKE) -C step08_edge_removal/pc-model/make_vs08  clean
	$(MAKE) -C step09_profiling/mb7707/nm  clean
	$(MAKE) -C step09_profiling/mb7707/pc/make_vs08  clean
	$(MAKE) -C step09_profiling/mb7707/pc/make_vs13  clean
	$(MAKE) -C step09_profiling/mc5103/nm  clean
	$(MAKE) -C step09_profiling/mc5103/pc/make_vs08  clean
	$(MAKE) -C step09_profiling/mc5103/pc/make_vs13  clean
	$(MAKE) -C step10_nmpp_optimization/standalone/mb7707  clean
	$(MAKE) -C step10_nmpp_optimization/standalone/mc5103  clean
	$(MAKE) -C step10_nmpp_optimization/mb7707/nm  clean
	$(MAKE) -C step10_nmpp_optimization/mb7707/pc/make_vs08  clean
	$(MAKE) -C step10_nmpp_optimization/mb7707/pc/make_vs13  clean
	$(MAKE) -C step10_nmpp_optimization/mc5103/nm  clean
	$(MAKE) -C step10_nmpp_optimization/mc5103/pc/make_vs08  clean
	$(MAKE) -C step10_nmpp_optimization/mc5103/pc/make_vs13  clean
	$(MAKE) -C step10_nmpp_optimization/pc-model/make_vs08  clean
	$(MAKE) -C step11_filter3h/standalone/mb7707 clean
	$(MAKE) -C step11_filter3h/standalone/mc5103 clean
	$(MAKE) -C step11_filter3h/mb7707/nm  clean
	$(MAKE) -C step11_filter3h/mb7707/pc/make_vs08  clean
	$(MAKE) -C step11_filter3h/mb7707/pc/make_vs13  clean
	$(MAKE) -C step11_filter3h/mc5103/nm  clean
	$(MAKE) -C step11_filter3h/mc5103/pc/make_vs08  clean
	$(MAKE) -C step11_filter3h/mc5103/pc/make_vs13  clean
	$(MAKE) -C step11_filter3h/pc-model/make_vs08  clean
	$(MAKE) -C step12_filter3v/standalone/mb7707  clean
	$(MAKE) -C step12_filter3v/standalone/mc5103  clean
	$(MAKE) -C step12_filter3v/mb7707/nm  clean
	$(MAKE) -C step12_filter3v/mb7707/pc/make_vs08  clean
	$(MAKE) -C step12_filter3v/mb7707/pc/make_vs13  clean
	$(MAKE) -C step12_filter3v/mc5103/nm  clean
	$(MAKE) -C step12_filter3v/mc5103/pc/make_vs08  clean
	$(MAKE) -C step12_filter3v/mc5103/pc/make_vs13  clean
	$(MAKE) -C step12_filter3v/pc-model/make_vs08  clean
	$(MAKE) -C step13_memory_optimization/standalone/mb7707  clean
	$(MAKE) -C step13_memory_optimization/standalone/mc5103  clean
	$(MAKE) -C step13_memory_optimization/mb7707/nm  clean
	$(MAKE) -C step13_memory_optimization/mb7707/pc/make_vs08  clean
	$(MAKE) -C step13_memory_optimization/mb7707/pc/make_vs13  clean
	$(MAKE) -C step13_memory_optimization/mc5103/nm  clean
	$(MAKE) -C step13_memory_optimization/mc5103/pc/make_vs08  clean
	$(MAKE) -C step13_memory_optimization/mc5103/pc/make_vs13  clean
	$(MAKE) -C step13_memory_optimization/pc-model/make_vs08  clean
	$(MAKE) -C step14_max_performance/standalone/mb7707  clean
	$(MAKE) -C step14_max_performance/standalone/mc5103  clean
	$(MAKE) -C step14_max_performance/mb7707/nm  clean
	$(MAKE) -C step14_max_performance/mb7707/pc/make_vs08 clean
	$(MAKE) -C step14_max_performance/mb7707/pc/make_vs13 clean
	$(MAKE) -C step14_max_performance/mc5103/nm  clean
	$(MAKE) -C step14_max_performance/mc5103/pc/make_vs08  clean
	$(MAKE) -C step14_max_performance/mc5103/pc/make_vs13 clean
	$(MAKE) -C step15_hdmi_sd/mb7707/nm  clean
	$(MAKE) -C step15_hdmi_sd/mb7707/pc/make_vs08  clean
	$(MAKE) -C step15_hdmi_sd/mb7707/pc/make_vs13  clean
	$(MAKE) -C step16_hdmi_hd/mb7707/nm  clean
	$(MAKE) -C step16_hdmi_hd/mb7707/pc/make_vs08  clean
	$(MAKE) -C step16_hdmi_hd/mb7707/pc/make_vs13  clean

steps:
	$(MAKE) -C step00_easybmp_prototype/pc-model/make_vs08
	$(MAKE) -C step00_easybmp_prototype/pc-model/make_vs13
	$(MAKE) -C step01_easybmp_risc_8bit/pc-model/make_vs08 
	$(MAKE) -C step01_easybmp_risc_8bit/pc-model/make_vs13 
	$(MAKE) -C step01_easybmp_risc_8bit/standalone/mb7707
	$(MAKE) -C step01_easybmp_risc_8bit/standalone/mc7601
	$(MAKE) -C step01_easybmp_risc_8bit/standalone/mc5103
	$(MAKE) -C step01_easybmp_risc_8bit/mb7707/pc/make_vs08 
	$(MAKE) -C step01_easybmp_risc_8bit/mb7707/pc/make_vs13 
	$(MAKE) -C step01_easybmp_risc_8bit/mc5103/pc/make_vs08 
	$(MAKE) -C step01_easybmp_risc_8bit/mc5103/pc/make_vs13 
	$(MAKE) -C step01_easybmp_risc_8bit/mc7601/pc/make_vs08 
	$(MAKE) -C step01_easybmp_risc_8bit/mc7601/pc/make_vs13 
	$(MAKE) -C step02_easybmp_risc_32bit/pc-model/make_vs08 
	$(MAKE) -C step02_easybmp_risc_32bit/pc-model/make_vs13 
	$(MAKE) -C step02_easybmp_risc_32bit/standalone/mb7707
	$(MAKE) -C step02_easybmp_risc_32bit/standalone/mc7601
	$(MAKE) -C step02_easybmp_risc_32bit/standalone/mc5103
	$(MAKE) -C step02_easybmp_risc_32bit/mb7707/pc/make_vs08 
	$(MAKE) -C step02_easybmp_risc_32bit/mb7707/pc/make_vs13 
	$(MAKE) -C step02_easybmp_risc_32bit/mc5103/pc/make_vs08 
	$(MAKE) -C step02_easybmp_risc_32bit/mc5103/pc/make_vs13 
	$(MAKE) -C step02_easybmp_risc_32bit/mc7601/pc/make_vs08 
	$(MAKE) -C step02_easybmp_risc_32bit/mc7601/pc/make_vs13 
	$(MAKE) -C step03_easybmp_nmpp/standalone/mb7707
	$(MAKE) -C step03_easybmp_nmpp/standalone/mc5103
	$(MAKE) -C step03_easybmp_nmpp/mb7707/pc/make_vs08 
	$(MAKE) -C step03_easybmp_nmpp/mb7707/pc/make_vs13 
	$(MAKE) -C step03_easybmp_nmpp/mc5103/nm 
	$(MAKE) -C step03_easybmp_nmpp/mc5103/pc/make_vs08 
	$(MAKE) -C step03_easybmp_nmpp/mc5103/pc/make_vs13 
	$(MAKE) -C step03_easybmp_nmpp/pc-model/make_vs08 
	$(MAKE) -C step03_easybmp_nmpp/pc-model/make_vs13 
	$(MAKE) -C step04_vshell_nmpp/mb7707/nm 
	$(MAKE) -C step04_vshell_nmpp/mb7707/pc/make_vs08 
	$(MAKE) -C step04_vshell_nmpp/mb7707/pc/make_vs13 
	$(MAKE) -C step04_vshell_nmpp/mc5103/nm 
	$(MAKE) -C step04_vshell_nmpp/mc5103/pc/make_vs08 
	$(MAKE) -C step04_vshell_nmpp/mc5103/pc/make_vs13 
	$(MAKE) -C step04_vshell_nmpp/pc-model/make_vs08 
	$(MAKE) -C step04_vshell_nmpp/pc-model/make_vs13 
	$(MAKE) -C step05_filter_optimization/standalone/mb7707
	$(MAKE) -C step05_filter_optimization/standalone/mc5103	
	$(MAKE) -C step05_filter_optimization/mb7707/nm 
	$(MAKE) -C step05_filter_optimization/mb7707/pc/make_vs08 
	$(MAKE) -C step05_filter_optimization/mb7707/pc/make_vs13 
	$(MAKE) -C step05_filter_optimization/mc5103/nm 
	$(MAKE) -C step05_filter_optimization/mc5103/pc/make_vs08 
	$(MAKE) -C step05_filter_optimization/mc5103/pc/make_vs13 
	$(MAKE) -C step05_filter_optimization/pc-model/make_vs08 
	$(MAKE) -C step05_filter_optimization/pc-model/make_vs13 
	$(MAKE) -C step06_class/standalone/mb7707 	
	$(MAKE) -C step06_class/standalone/mc5103 	
	$(MAKE) -C step06_class/mb7707/nm 
	$(MAKE) -C step06_class/mb7707/pc/make_vs08 
	$(MAKE) -C step06_class/mb7707/pc/make_vs13 
	$(MAKE) -C step06_class/mc5103/nm 
	$(MAKE) -C step06_class/mc5103/pc/make_vs08 
	$(MAKE) -C step06_class/mc5103/pc/make_vs13 
	$(MAKE) -C step06_class/pc-model/make_vs08 
	$(MAKE) -C step06_class/pc-model/make_vs13 
	$(MAKE) -C step07_internal_memory/standalone/mb7707
	$(MAKE) -C step07_internal_memory/standalone/mc5103
	$(MAKE) -C step07_internal_memory/mb7707/nm 
	$(MAKE) -C step07_internal_memory/mb7707/pc/make_vs08 
	$(MAKE) -C step07_internal_memory/mb7707/pc/make_vs13 
	$(MAKE) -C step07_internal_memory/mc5103/nm 
	$(MAKE) -C step07_internal_memory/mc5103/pc/make_vs08 
	$(MAKE) -C step07_internal_memory/mc5103/pc/make_vs13 
	$(MAKE) -C step07_internal_memory/pc-model/make_vs08 
	$(MAKE) -C step08_edge_removal/standalone/mb7707
	$(MAKE) -C step08_edge_removal/standalone/mc5103
	$(MAKE) -C step08_edge_removal/mb7707/nm 
	$(MAKE) -C step08_edge_removal/mb7707/pc/make_vs08 
	$(MAKE) -C step08_edge_removal/mb7707/pc/make_vs13 
	$(MAKE) -C step08_edge_removal/mc5103/nm 
	$(MAKE) -C step08_edge_removal/mc5103/pc/make_vs08 
	$(MAKE) -C step08_edge_removal/mc5103/pc/make_vs13 
	$(MAKE) -C step08_edge_removal/pc-model/make_vs08 
	$(MAKE) -C step09_profiling/mb7707/nm 
	$(MAKE) -C step09_profiling/mb7707/pc/make_vs08 
	$(MAKE) -C step09_profiling/mb7707/pc/make_vs13 
	$(MAKE) -C step09_profiling/mc5103/nm 
	$(MAKE) -C step09_profiling/mc5103/pc/make_vs08 
	$(MAKE) -C step09_profiling/mc5103/pc/make_vs13 
	$(MAKE) -C step10_nmpp_optimization/standalone/mb7707 
	$(MAKE) -C step10_nmpp_optimization/standalone/mc5103 
	$(MAKE) -C step10_nmpp_optimization/mb7707/nm 
	$(MAKE) -C step10_nmpp_optimization/mb7707/pc/make_vs08 
	$(MAKE) -C step10_nmpp_optimization/mb7707/pc/make_vs13 
	$(MAKE) -C step10_nmpp_optimization/mc5103/nm 
	$(MAKE) -C step10_nmpp_optimization/mc5103/pc/make_vs08 
	$(MAKE) -C step10_nmpp_optimization/mc5103/pc/make_vs13 
	$(MAKE) -C step10_nmpp_optimization/pc-model/make_vs08 
	$(MAKE) -C step11_filter3h/standalone/mb7707
	$(MAKE) -C step11_filter3h/standalone/mc5103
	$(MAKE) -C step11_filter3h/mb7707/nm 
	$(MAKE) -C step11_filter3h/mb7707/pc/make_vs08 
	$(MAKE) -C step11_filter3h/mb7707/pc/make_vs13 
	$(MAKE) -C step11_filter3h/mc5103/nm 
	$(MAKE) -C step11_filter3h/mc5103/pc/make_vs08 
	$(MAKE) -C step11_filter3h/mc5103/pc/make_vs13 
	$(MAKE) -C step11_filter3h/pc-model/make_vs08 
	$(MAKE) -C step12_filter3v/standalone/mb7707 
	$(MAKE) -C step12_filter3v/standalone/mc5103 
	$(MAKE) -C step12_filter3v/mb7707/nm 
	$(MAKE) -C step12_filter3v/mb7707/pc/make_vs08 
	$(MAKE) -C step12_filter3v/mb7707/pc/make_vs13 
	$(MAKE) -C step12_filter3v/mc5103/nm 
	$(MAKE) -C step12_filter3v/mc5103/pc/make_vs08 
	$(MAKE) -C step12_filter3v/mc5103/pc/make_vs13 
	$(MAKE) -C step12_filter3v/pc-model/make_vs08 
	$(MAKE) -C step13_memory_optimization/standalone/mb7707 
	$(MAKE) -C step13_memory_optimization/standalone/mc5103 
	$(MAKE) -C step13_memory_optimization/mb7707/nm 
	$(MAKE) -C step13_memory_optimization/mb7707/pc/make_vs08 
	$(MAKE) -C step13_memory_optimization/mb7707/pc/make_vs13 
	$(MAKE) -C step13_memory_optimization/mc7601/nm 
	$(MAKE) -C step13_memory_optimization/mc7601/pc/make_vs08 
	$(MAKE) -C step13_memory_optimization/mc7601/pc/make_vs13 
	$(MAKE) -C step13_memory_optimization/mc5103/nm 
	$(MAKE) -C step13_memory_optimization/mc5103/pc/make_vs08 
	$(MAKE) -C step13_memory_optimization/mc5103/pc/make_vs13 
	$(MAKE) -C step13_memory_optimization/pc-model/make_vs08 
	$(MAKE) -C step14_max_performance/standalone/mb7707 
	$(MAKE) -C step14_max_performance/standalone/mc5103 
	$(MAKE) -C step14_max_performance/mb7707/nm 
	$(MAKE) -C step14_max_performance/mb7707/pc/make_vs08
	$(MAKE) -C step14_max_performance/mb7707/pc/make_vs13
	$(MAKE) -C step14_max_performance/mc5103/nm 
	$(MAKE) -C step14_max_performance/mc5103/pc/make_vs08 
	$(MAKE) -C step14_max_performance/mc5103/pc/make_vs13
	$(MAKE) -C step15_hdmi_sd/mb7707/nm 
	$(MAKE) -C step15_hdmi_sd/mb7707/pc/make_vs08 
	$(MAKE) -C step15_hdmi_sd/mb7707/pc/make_vs13 
	$(MAKE) -C step16_hdmi_hd/mb7707/nm 
	$(MAKE) -C step16_hdmi_hd/mb7707/pc/make_vs08 
	$(MAKE) -C step16_hdmi_hd/mb7707/pc/make_vs13 

test:
	$(MAKE) -C step00_easybmp_prototype\pc-model\make_vs08 run
	$(MAKE) -C step00_easybmp_prototype\pc-model\make_vs13 run
	$(MAKE) -C step01_easybmp_risc_8bit\mb7707\pc\make_vs08 run
	$(MAKE) -C step01_easybmp_risc_8bit\mb7707\pc\make_vs13 run
	$(MAKE) -C step01_easybmp_risc_8bit\mc5103\pc\make_vs08 run
	$(MAKE) -C step01_easybmp_risc_8bit\mc5103\pc\make_vs13 run
	$(MAKE) -C step01_easybmp_risc_8bit\pc-model\make_vs08 run
	$(MAKE) -C step01_easybmp_risc_8bit\pc-model\make_vs13 run
	$(MAKE) -C step01_easybmp_risc_8bit\standalone\mb7707 run
	$(MAKE) -C step01_easybmp_risc_8bit\standalone\mc5103 run
	$(MAKE) -C step02_easybmp_risc_32bit\mb7707\pc\make_vs08 run
	$(MAKE) -C step02_easybmp_risc_32bit\mb7707\pc\make_vs13 run
	$(MAKE) -C step02_easybmp_risc_32bit\mc5103\pc\make_vs08 run
	$(MAKE) -C step02_easybmp_risc_32bit\mc5103\pc\make_vs13 run
	$(MAKE) -C step02_easybmp_risc_32bit\pc-model\make_vs08 run
	$(MAKE) -C step02_easybmp_risc_32bit\pc-model\make_vs13 run
	$(MAKE) -C step02_easybmp_risc_32bit\standalone\mb7707 run
	$(MAKE) -C step02_easybmp_risc_32bit\standalone\mc5103 run
	$(MAKE) -C step03_easybmp_nmpp\mb7707\pc\make_vs08 run
	$(MAKE) -C step03_easybmp_nmpp\mb7707\pc\make_vs13 run
	$(MAKE) -C step03_easybmp_nmpp\mc5103\pc\make_vs08 run
	$(MAKE) -C step03_easybmp_nmpp\mc5103\pc\make_vs13 run
	$(MAKE) -C step03_easybmp_nmpp\pc-model\make_vs08 run
	$(MAKE) -C step03_easybmp_nmpp\pc-model\make_vs13 run
	$(MAKE) -C step03_easybmp_nmpp\standalone\mb7707 run
	$(MAKE) -C step03_easybmp_nmpp\standalone\mc5103 run
	$(MAKE) -C step05_filter_optimization\standalone\mb7707 run
	$(MAKE) -C step05_filter_optimization\standalone\mc5103 run
	$(MAKE) -C step06_class\standalone\mb7707 run
	$(MAKE) -C step06_class\standalone\mc5103 run
	$(MAKE) -C step07_internal_memory\standalone\mb7707 run
	$(MAKE) -C step07_internal_memory\standalone\mc5103 run
	
	
	$(MAKE) -C step01_easybmp_risc_8bit\standalone\mc7601 run
	$(MAKE) -C step01_easybmp_risc_8bit\mc7601\pc\make_vs08 run
	$(MAKE) -C step01_easybmp_risc_8bit\mb7601\pc\make_vs13 run
	$(MAKE) -C step02_easybmp_risc_32bit\mc7601\pc\make_vs08 run
	$(MAKE) -C step02_easybmp_risc_32bit\mc7601\pc\make_vs13 run
	$(MAKE) -C step02_easybmp_risc_32bit\standalone\mb7601 run
	
	