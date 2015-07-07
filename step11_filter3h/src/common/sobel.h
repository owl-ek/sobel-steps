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


class CBaseSobel {


	nm8s*  signedImgUpLine	;	// Temporary buffer. 1 line up offset 
	nm8s*  signedImg		;	// Temporary buffer.

	nm16s* horizontTmpUpLine;	// Temporary buffer 1 line up offset 
	nm16s* horizontTmp		;	// Temporary buffer 
	nm16s* horizontTmpDnLine;	// Temporary buffer 1 line down offset 

	nm16s* horizontOut	;		// Temporary buffer
	nm16s* verticalOut	;		// Temporary buffer

	CSIG_FIR<nm8s,nm16s> FIR121;// 1-D Filter
	CSIG_FIR<nm8s,nm16s> FIR101;// 1-D Filter

	
public:
	int wrapSize;				// size of image with 2 boundary lines
	int size;					// image size 
	int width;
	int height;
	bool isReady;				// memory allocation status

	CBaseSobel();
	CBaseSobel(int Width, int Height);
	~CBaseSobel();
	int init(int Width, int Height);
	int filter( const unsigned char *source, unsigned char *result);
};

class CSobel: public CBaseSobel {
	int			sliceCount;		// count of slices which source image is split into
	
public:
	CSobel();
	CSobel(int Width, int Height);
	~CSobel();
	int init(int Width, int Height);
	int filter( const unsigned char *source, unsigned char *result);
};

#endif
