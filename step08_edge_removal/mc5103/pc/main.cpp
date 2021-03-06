//------------------------------------------------------------------------
//  Sobel filter 
//
//  Author: Sergey Mushkaev
//
//  Copyright (c) 2015 RC Module Inc.
//------------------------------------------------------------------------

#include <windows.h>
#include <process.h> 
#include "VShell.h"
#include "time.h"
#include "stdio.h"
#include "pc_connector_mc5103.h"
#ifdef _DEBUG 
#define PROGRAM "../../nm/sobel_mc5103_nmd.abs"
#else
#define PROGRAM "../../nm/sobel_mc5103_nm.abs"
#endif

int main()
{
	// Access and loading program to nm-board
	C_PC_Connector_mc5103 Connector(PROGRAM);
	if (!Connector.isConnected()){
		printf("Connection to mc5103 error!");
		return -1;
	}

	int handshake= halSync(0xC0DE0086);
	if (handshake!=0xC0DE6406){
		printf("Handshake with mc5103 error!");
		return -1;
	}
	
	if(!VS_Init())
		return 0;

	if(!VS_Bind("d:/Video/Films/720x576/bugs.avi"))
		return 0;

	int width =VS_GetWidth (VS_SOURCE);
	int height=VS_GetHeight(VS_SOURCE);
	int size  =width*height;

    VS_CreateImage("Source Image", 1, width, height, VS_RGB8, NULL);
	VS_CreateImage("Sobel  Image", 2, width, height, VS_RGB8, NULL);

	halSync(width);
	halSync(height);
	int ok=halSync(0);
	if (ok!=0x600DB00F){
		printf("Memory allocation error!");
		return -1;
	}
	unsigned srcAddr=halSync(0);
	unsigned dstAddr=halSync(0);
	
	unsigned char*  srcImg8=  new unsigned char [size];
	unsigned char*  dstImg8=  new unsigned char [size];

	
	
	
	while(VS_Run())
	{
        VS_GetGrayData(VS_SOURCE, srcImg8);
		VS_SetData(1, srcImg8);
		halWriteMemBlock((unsigned*)srcImg8, srcAddr, size/4);
		halSync(0);
		//... wait while sobel runs on board
		int t=halSync(0);
		halReadMemBlock ((unsigned*)dstImg8, dstAddr, size/4);
			
		VS_SetData(2, dstImg8);
		VS_Text("%d clocks per frame, %.2f clocks per pixel, %.2f fps\r\n", t, 1.0*t/size, 320000000.0/t );
		VS_Draw(VS_DRAW_ALL);
	}

	delete srcImg8;
	delete dstImg8;
    
    return 0;
}
