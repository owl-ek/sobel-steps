#include <time.h>
#include "sobel.h"
#include "nmplv.h"
#include "easypgm.h"

#pragma data_section ".data_source_pgm.bss"
	long long src_pgm_file[1920*1080/8+8];
#pragma data_section ".data_result_pgm.bss"
	long long dst_pgm_file[1920*1080/8+8];
	
int main()
{  
	int width ;
	int height;

	// parse pgm header	
	int src_pgm_header_len=read_pgm_header(src_pgm_file,width,height);
	if (src_pgm_header_len==0){
		width=128;	// use default value if pgm-header is invalid
		height=128;	// use default value if pgm-header is invalid
	}
	nm8u* src=VEC_Addr((nm8u*)src_pgm_file,src_pgm_header_len);
	int dst_pgm_header_len=save_pgm_header(dst_pgm_file,width,height," Created By RC-Module(2015)");
	nm8u* dst=VEC_Addr((nm8u*)dst_pgm_file,dst_pgm_header_len);
	
	// Sobel filtration
	CBaseSobel sobel(width, height);
	if (!sobel.isReady) return -1;
	clock_t t0=clock();
	sobel.filter(src,dst);
	clock_t t1=clock();

	return t1-t0; 
} 
