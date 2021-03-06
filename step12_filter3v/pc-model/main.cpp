/******************************************************************************
*    RC Module
*    NeuroMatrix(r) NM6406 Software
*
*    Software design:    S.Mushkaev
*
*
*    Copyright (c) 2015 RC Module Inc.
******************************************************************************/

#include "VShell.h"
#include "sobel.h"
#include "malloc32.h"

#define WRAP_SIZE (1920/2+2)

void* wrap_malloc32 (unsigned size_int32)
{
	int* wrap=(int*)malloc32(size_int32+WRAP_SIZE*2,-1);
	if  (wrap==0) return 0;
	int* goods=wrap+WRAP_SIZE;
	return goods;	
}

void wrap_free32(void* p)
{
	if (p)	free((int*)p-WRAP_SIZE);
}

int main()
{
	if(!VS_Init())	// Init vshell
		return 0;

	if(!VS_Bind("../../../input/bugs720x576x20.avi"))	// Input video stream
		return 0;

	int width =VS_GetWidth (VS_SOURCE);	// Get width  of video frame
	int height=VS_GetHeight(VS_SOURCE);	// Get height of video frame
	int size  =width*height;

	VS_CreateImage("Source Image", 1, width, height, VS_RGB8, 0);	// Create window for grayscale drawing of 8-bit source image
	VS_CreateImage("Sobel  Image", 2, width, height, VS_RGB8, 0);	// Create window for grayscale drawing of 8-bit result image

	NmppsFrame_8u srcFrame;
	NmppsFrame_8u dstFrame;
	unsigned char* srcImg8=(unsigned char*) nmppsMallocFrame_8u(size,width,&srcFrame);	// Allocate source image buffer with guard fields of two rows
	unsigned char* dstImg8=(unsigned char*) nmppsMallocFrame_8u(size,width,&dstFrame);	// Allocate result image buffer 
	
	
	CSobel sobel(width, height);

	while(VS_Run())
	{
        VS_GetGrayData(VS_SOURCE, srcImg8);	// Get image from video stream
		VS_SetData(1, srcImg8);				// Put source image in window 1

		sobel.filter(srcImg8, dstImg8);
		
		
		VS_SetData(2, dstImg8);
		VS_Draw(VS_DRAW_ALL);
	}
    
	nmppsFree(srcFrame.pull);	// Free source image buffer 
	nmppsFree(dstFrame.pull);	// Free result image buffer 
    return 0;
}
