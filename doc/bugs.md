������������� ����� �� ��� �����
������� � ������ �� Neuromatrix ��� ��� ������ ������ ����� �� ��� �����.

� ��� �� ��������� ���������� ��������������� 7707 ��� ����������� �� ����� . 
� ������� ���������� ������ ��� ������ ������� DSP , � � ��� ���� �������� ��� ���� ������� �������� ������� �� ������ �� ����������� �� ��������������. 
� ���� �� ������ ? � ������ ��� ��������������� �������� ���������������� .
��������� ������� ������������� � DSP ������ � ������������ ����� ������.

� ����� ������ ��������� ������ ��������� ����:
- �����������, ��������� ��, ��������������, ������ ������ .
- ������� ������������ C++ ���� �� NeuroMatrix
- ��������� ���������� ����� ��� NeuroMatrix
- ������������ ��������� �� ��������� ��������� ���������� �++ ���������
- �����������  ��������� � �������������� ����� ���������� 
- ������� ������ � ���������� � ������� �������
- �������� ����������� ����������� 
- ���������� �������������� 
- ������ ����� HDMI
- ������������� ������ ������� ����������� 





��� ����������� ��� ������  ���������� ��������� ��� ���������� ����� �����, ����� �� ������ ������������ ����� ����������� ����������� ������������� ���������� , 
�� � ����� ������������� ��� �������� ������� ����������, �����������, ������������ ��� ������� ��������,  �����  �������� ���������� ������� � �����������.
�� ��������� �����  ������ �������� ����� ���� �� ������� ��������� ���������� � ��� ���������������� , � ������� �������� �������� ���������, ��������� ��������������. 

� ������ ������ �� ������� �������� "����" ����� ������������� ������ �� NeuroMatrix, �� � ��� ��������� ������� � ���������� ������� , �� ������� �� ���������� ����������. 
����� ����� �������� ������ �������� ������� � �������������� ���� ��� ������������������, ��� ���� ����� ������ ��������� �������� ������������ ���������� . 

�� ������ �������� ������� ������������ ���������� ���������� ������� ��������������� �������� . 

����� ������������� ����������� ���������� � NeuroMatrix �� ������� �����. ������� �� ������� �������� ������������� ������ �� �++ , �� ������-����������������� ���� �� ����������. 
� �������� ������� ����� ������������ ������ ��������� � ���������� � �������� ��������� �������� ������ ������. 
� ����� ������� ����� ��������� �������� �����. 
1 - ������������ � ������ �++ ������ �� RISC NMC 
2 - ���������� ������������ ������� ��� �������������� ����������� ������������
4 - ����������� � ������ ������������� ������������ ����������
3 - ����������� ��������� ������� �� ������ ����������. 

������ ��� ����� ����� ����� ������ �������.  ������ ��� �������� �� ���� ����������� �������� , � ��� ����������� ����������������� �� ������� ������� ����������� 
�� � ����� ������������ ����� ������� ������ ���� ����������.  ����� ����� �������������� ������ ��������� ��������� ����������� , ������ ���������� ����� ���������������������� ����.
��� ���� ����� �������� ��� � ����� ������. 

1-�� ��� ���������������� 
� ��� ���� �������������� ����� ������� ������, ��������� �� �������� ��� ����� � ����� Microsoft Visual Studio 8 � Microsoft Visual Studio 13.   
�������� ����������� ��������� [������](https://ru.wikipedia.org/wiki/%D0%9E%D0%BF%D0%B5%D1%80%D0%B0%D1%82%D0%BE%D1%80_%D0%A1%D0%BE%D0%B1%D0%B5%D0%BB%D1%8F) ����� ��������� ��� **sobel.cpp**: 
```cpp
short sobelH[9]={
		1, 2, 1,
		0, 0, 0,
		-1,-2,-1};

short sobelV[9]={
		1, 0, -1,
		2, 0, -2,
		1, 0, -1};

void sobel( const unsigned char *source, unsigned char *result, int width, int height)
{
	int j,sum1,sum2;
	const unsigned char *line1, *line2, *line3;
	line1 = source- width -1;
	line2 = line1 + width;
	line3 = line2 + width;
	const unsigned char* end=source+width*height;
	
	for(j=0; j<height*width; j++){
		if (line1>source && (line3+2)<end){
			sum1  = line1[0]*sobelH[0] + line1[1]*sobelH[1] + line1[2]*sobelH[2] +
					line2[0]*sobelH[3] + line2[1]*sobelH[4] + line2[2]*sobelH[5] + 
					line3[0]*sobelH[6] + line3[1]*sobelH[7] + line3[2]*sobelH[8] ;
			
			sum2  = line1[0]*sobelV[0] + line1[1]*sobelV[1] + line1[2]*sobelV[2] +
					line2[0]*sobelV[3] + line2[1]*sobelV[4] + line2[2]*sobelV[5] + 
					line3[0]*sobelV[6] + line3[1]*sobelV[7] + line3[2]*sobelV[8] ;
			
			sum1=(sum1>0)?sum1:-sum1;
			sum2=(sum2>0)?sum2:-sum2;
			*result=MIN(255,sum1+sum2);
		}
		result++;
		line1++;
        line2++;
        line3++;
	}
}
```


 



����� �� ����� �������� ��������� . 




 



����������� ������������� ��� ������������ � ����������������� ����������� ���������� NeuroMatrix, ������� � ����������������� ������� ��77.07 � ��5103.
����������� ������� ���������������� ����������� DSP-���������� � ���� ����� ����� ������� �� ������� ������� ������������� �++ ������ 
�� ���������� ������-����������������� ���� ��� ��������� �����������.
� �������� ������� ������������ ������ ����������� � ������� ��� ������ ������.


*Step by step DSP application development for NeuroMatrix . There are examples of filter Sobel  starting from simple C++ model to high-optimized application using NeuroMatrix vector co-processor*

������������ ����� ����� �������� ���������� � ����� ������ ��������� ���������� ��������, ������ ��������� ����� ������ ������ ���������������� ��� NeuroMatrix ,
����������� ����������� �����������, � ����� ��������� ������� ����������.  
� �������� �������� ����� ����������� ��������� �������:
- �������� �������� ������������ ������� ���������� � x86 ��������� �� NMC
- ����������� �������������������� �������� �������. 
- ������ ���������� � ���������� ������ ��� ���� ��5103 � MB7707 
- ������ ���������� ��� ����������� ����-��������� ��� ���� ��5103 � MB7707
- ������ � ����������� �������� VSHELL ��� ��������� ���������� � ������� ���-���������� 
- ������ ������������ ���� �� RISC-����
- ����������� ��������� ���������� NMPP � ������� ���� �� ��������� �����������
- ����������� ���������, ��������� ���� - ���������� ����. ������� �� ���������� 
- ����������� ��������� - ������� ��������� �� ������� ������ - � ������� ����������
- ��������������
- ����������������� ������� ������ �� ���������� ������ ������.  
- ������ � ������������ MB7707 , ����� ����������� �� ��������� ����� HDMI

## ��������� ��������� � ������
��������� ������� �� ���� �������:
- ��������� ��������� � ������� ���������� 
- ��������  ������������ 
- ������ �������� � ������

### ��������� ��������� � ������� ���������� 
������ ������ <sobel-steps> ����� ��������� ������������ �� ��������� � ���������� ��:
- nmsdk (SDK ��� ������ �������� ��� NMC)
- mc5103sdk (�� ��������� ��� ����� ��5103)
- mc7601sdk (�� ��������� ��� ����� ��7601)
- mb7707sdk (�� ��������� ��� ����� ��77.07)
- nmpp (���������� ��������-��������� ������� �� ����������� ��������� NeuroMatrix)
- nmprofiler (���������� ��������������)
- vshell32 (����������� �������� ��� ���������� ��������������� ��� Windows)

���� ��������� ������ ����� ���������� ��������������, ��� ����������� ������������� ������ �
��������� ��������� ��������� ��� ��������� ���������� ������������ ����� �������� � ����� ������������ � ��������� �����
*/sobel-steps/deps* � ������ ���������� ������. ��� ���� ������� ��������� ���������� ��������� � ������� �� ��������� � �� ������������.
��������� ��������������� ���������� ������������ � ����� */sobel-steps/global.mk*
 
������� � ���������� ��� ����������� ���������� ����� �������� ���������
```bat
make download 
make install
```

��� ����������� ���������� ��������� Makefile-�������� ��� Windows ����������, ����� ���� ����������� ��������� �������:
- **Make for Windows**. [������� �����������](http://gnuwin32.sourceforge.net/downlinks/make.php). �������� ��������: http://gnuwin32.sourceforge.net/packages/make.htm


> ��������������� ��������� ��� ���������� � ���������� ��� Windows ����� �������� **wget** � **unzip**.
> � ����� */sobel-steps/global.mk* ����� ���������� OS_WGET � OS_UNZIP ����� ��������� ������ ���������� � ���������� 
- **Wget for Windows**. [������� �����������](http://downloads.sourceforge.net/gnuwin32/wget-1.11.4-1-setup.exe). �������� �������� http://gnuwin32.sourceforge.net/packages/wget.htm
- **UnZip for Windows** [������� �����������](http://gnuwin32.sourceforge.net/downlinks/unzip.php). �������� �������� http://gnuwin32.sourceforge.net/packages/unzip.htm  
> ������� ������ ���� �������� ����� ���������� ��������� PATH.  
> ���� � **wget** � **unzip** ����� �� ����������� � PATH ���� ��� �� ��������� ���� ������� ����� */sobel-steps/gnuwin32*


� ����������� ����� ����� �������������� ��������� ��������� ������ � ����������� ��������: 
- ��������� ���������� (standalone) ���������� , ����������� ���������� �� ��������� ����.
- ����-����������� ���������� (host-target), ��� �������� � ���������� NMC-���������� �� �����
 �������������� �� ������� ����-���������, ������������� �� �++ � ����� Microsoft Visual Studio (2005 ��� 2013)

�������������� ��� ������� �������� ����� ��������� ������������� ������ Mi�rosoft Visual Studio 
 * [Visual Studio 2005 Express](http://apdubey.blogspot.ru/2009/04/microsoft-visual-studio-2005-express.html)
 * [Visual Studio 2013 Express](https://www.microsoft.com/en-US/download/details.aspx?id=44914)  

> �������� ���� (MC5103,��77.07,��7601..)   �������������� ��� ����������� ������������� 
 
### ��������  ������������ 
 
� �������� �������� ������ ������������ ����������� � ������� bmp, pgm � ����������� .
�������� �����-������ ������������ �������� � �����  */sobel-steps/input* �������� 
```bat
make avi
```
  

### ������ � ������
1. ������ host-target ���������� (� �������������� ������� nm � pc �����) �������������� ��������
```mak
 make run
```
  �� ��������������� ����� �������� ����� ����������, �������� *mb7707/pc/make_vs08*  
2. ������ �����������(standalone) ����������  �������������� ����� �������� 
```mak
make run
```
�� ��������������� ����� */standalone*  
3. ��� ������ � ������ MB77.07 � *pc/main.cpp* ���������� �������������� MAC-����� �������� �������� ������������� � �����.
 � ��� ������ � ������ � ���������� ������ MAC-����� ��������� ������ � */sobel-steps/global.mk*. �� ��������� ������������:
```cpp
  unsigned char MAC_ADDRESS[] = {0x1a, 0x2b, 0x3c, 0x4d, 0x5e, 0x6f}
```
4. ���������, ��� ��������� �� ����� MB77.07 ����������� (�������� OS Linux - �� ������������). 


>����������� ������ ���� �������� ����� �������� 
>```mak
>  make steps
>```	


## �������������� ��������� � ������
����� ����������� ��������� ������� , ���������� ��� ��������� ���� ����, � ��������� ������ ���� �������� ����� ����� �������� 
```mak
  make
```	


### ���������� 
#### ��� 0. [���������� ��������� ������� ������ ��� ����� ](/step00_easybmp_prototype/)
 ��������������� ������������� ������. ������ �� �����.
#### ��� 1. [���������� � ������������ �� NMC](/step01_easybmp_port2nmc/)
 ��������� ���� ��� ����������� �������������������� 
#### ��� 2. [������������. ������ ��������� �� NMC](/step02_easybmp_risc/)
 �������������� ������ ������ �� �����, �� RISC ���� ���������� NMC �� ������ MB77.07 � ��5103
#### ��� 3. [������������ ��������� �� ��������� ���������](/step03_easybmp_nmpp/)
  ���������� ��������� ������� �� ������� NMPP 
#### ��� 4. [����������� ����������� �������� VSHELL ](/step04_vshell_nmpp/)
 ������� �� ��������� ��������� � ���������� ��������� ����������� �������� VSHELL
#### ��� 5. [����������� ����������� ��������  ](/step05_filter_optimization/)
 ������� �� ��������� ���������� � ���������� 
#### ��� 6. [����������� ������������� ��������� ������ ](/step06_class/)
 ������������� �������.
#### ��� 7. [����������� ��������� ��� ������ �� ���������� ������ nmc](/step07_internal_memory/)
 ������� � �������� ��������� ����������� �� ���������� ������.
#### ��� 8. [���������� ��������� �������� �������� ���������](/step08_edge_removal/)
#### ��� 9. [��������������](/step09_profiling/)
#### ��� 10. [����������� ��������� ������� ](/step10_nmpp_optimization/)
#### ��� 11. [����������� ������� ��������� �������������� ������ ](/step11_filter3h/)
#### ��� 12. [����������� ������� ��������� ������������ ������ ](/step12_filter3v/)
#### ��� 13. [����������������� ������� � �������� ������� ������ ](/step13_memory_optimization/)
#### ��� 14. [����������� ������� ������������������](/step14_max_performance/)
#### ��� 15. [HDMI ����� �� ����� � SD ����������](/step15_hdmi_sd/)
#### ��� 16. [HDMI ����� �� ����� � HD ����������](/step16_hdmi_hd/)


 