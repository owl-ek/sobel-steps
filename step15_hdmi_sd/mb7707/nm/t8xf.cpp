// ��� ��� ������ �� ����� ������ �������� 8�15 � ������� ������
// int g8xf( char *str, int x, int y ,int FGcolor, int BGcolor) 
// str ��������� ������ , � ������� ������ �����=int
// x ������ ���� ������ ������, y �����
//     ������������� ������� int
// ����� 2 ������� ���������� ���������:
// crt ����� �����������, rowsize �������� ����� �������� � ������
// ��������� ���������� d:\SVN\HAL\trunk\app\dma\sobel\app\sobel_mb7707_hdmi_nmc_only\nmc_libload\nm_main.cpp
// ������: g8xf("abcd", 100, 100, 255, 0);
//==============================================================
#include "fontw8xf.h"
#include "string.h"
 extern int rowsize;
 extern int *crt;
//int g8xf( char *str, int x, int y ,int FGcolor, int BGcolor)
int t8xf( char *str, void* img, int imgWidth, int x, int y ,int FGcolor, int BGcolor)
{ 
	int i,k,q, ia;
	unsigned int *t;
	int *pcrt, *j;
	unsigned int* f=fontw8xf; 
	unsigned int a;
	k=(rowsize*y); //!!
	j=(int*)crt + k + (x>>2); q=0; 
	for (k=0; k<15;k++)
	{   
		t=(unsigned int *)str; 
		pcrt=(int*)j;   j+=rowsize;
		//	  for (j=0;  j<4; j++)*pcrt++=-1;	  return 0;
		while (1)
		{
			ia=*t & 255; if(ia==0) break;  
			a=f[ ia >>2]; 
			a>>=( ia & 3)<<3;
			for (i=0;i<4;i++)
			{  
				q<<=8; 
				if (a&1) q|=FGcolor; else q|=BGcolor;
					a>>=1; 
			}
			pcrt[1]=q;
			for (i=0;i<4;i++)
			{ 
				q<<=8; 
				if (a&1) q|=FGcolor; else q|=BGcolor;
				a>>=1;
			}
			pcrt[0]=q; 
			pcrt+=2;
			t++;
		} 
		f+=64;
	}  
	i=x + (strlen(str)<<3); 
	return(i);
} 

// char *Hex8( int x)
char* hex2ascii(int x, char* str)
{
	int i,j,k;
	for (i=0; i<8; i++)	{ 
		j=x & 15;
		k=(j>9)? j+=87 : j+=48;
		str[7-i]=(char)k;
		x>>=4;
	}
	str[8]=0;
	return str;
}
char* hex2ascii(int x)
{ 
	static char hex8buf[11];
	return hex2ascii(x, (char*)hex8buf);
}
