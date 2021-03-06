/******************************************************************************
*    RC Module
*    NeuroMatrix(r) NM6406 Software
*
*    Image Processing Library 
*    Software design:    S.Mushkaev
*
*    Contents:           Sobel operator
*
*
******************************************************************************/

#ifndef  __SOBEL_H_INCLUDED__
#define  __SOBEL_H_INCLUDED__

#include "nmplv.h"
#include "nmpls.h"


class Sobel {

	void* pool1;
	void* pool2;
	void* pool3;

	nm8s*  signedImgUpLine	;	// Temporary buffer. 1 line up offset 
	nm8s*  signedImg		;	// Temporary buffer.

	nm16s* horizontTmpUpLine;	// Temporary buffer 1 line up offset 
	nm16s* horizontTmp		;	// Temporary buffer 

	nm16s* verticalTmpUpLine; 
	nm16s* verticalTmp		; 

	nm16s* horizontOut	;		// Temporary buffer
	nm16s* verticalOut	;		// Temporary buffer

	nm16s* horizontAbs;
	nm16s* verticalAbs;

	nm16s* summ;
	NmppsWeightState* pClipConvertState;

public:
	int frameSize;				// size of image with 2 boundary lines
	int size;					// image size 
	int width;
	int height;
	bool isReady;				// memory allocation status


	//Sobel(int Width, int Height);
	//~Sobel();
	int initAlloc(int Width, int Height);
	void free();
	int filter( const nm8u *source, nm8u *result);
	int filterFinal( const nm8u *source, nm8u *result, int partHeight);
};

class SobelCuts: public Sobel {
	int fullHeight;
public:
	//SobelCuts(int Width, int Height);
	//~CSobel();
	int initAlloc(int width, int height, int sliceHeight=0);
	int filter( const nm8u *source, nm8u *result);
};

#endif
