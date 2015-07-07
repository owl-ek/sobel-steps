## Шаг 10. Оптимизация векторных функций 

На этом шаге ускорим некоторые функции 
###  Используем VEC_Add2VW
В функции VEC_Add4V(lines, verticalOut, size)  просиходит суммирования 4 массив. Т.е. производится 4 операции чтения и одна запись. При чем два вектора у нас одинаковых. 
так как операцию удвоения мы можем проиводить "на лету", то напишем соотвествующую функцию , в которой будет уже три операции чтения.
```cpp
VEC_Add2VW (horizontTmp, horizontTmpUpLine,horizontTmpDnLine,verticalOut, size);
```

Основной рабочий цикл новой функции будет выглядеть так:
```cpp
	...
	<next_MulVN_rep32>
		rep 32 data = [ar0++gr0] with vsum ,data,0;
		rep 32 data = [ar1++gr1] with afifo + data;
	if <>0 delayed goto next_MulVN_rep32 with gr5--;
		rep 32 data = [ar2++gr2] with afifo + data;
		rep 32 [ar6++gr6] = afifo; 
	...
```

### VEC_Abs1(verticalOut, verticalOut,size);	
Функция VEC_Abs работает примерно со скростью 0.5 такта на 16-р. число. 
Эту функцию можно заменить на более быстродействующую VEC_Abs1. Для отрицательных значений эта функция возвращает результат отличающися 1 в сторону 0. 
Т.е. ABS(-3)=2; Однако, в задачах видеобработки эта погрешность несущественна, а скорость функции за счет ососбенностей векторного процесоора вдове выше, поэтому в дальнейшем будем использовать ее.


### VEC_ClipCnv_AddC 
Вместо двух функций VEC_ClipPowC (0,25 tick/pix) и VEC_Cnv(0,25 tick/pix)  за счет аппаратных возможностей векторного узла мы можем использовать одну VEC_ClipCnv_AddC (0,25 tick/pix)

В результате данной оптимизцаии мы получили следующий прирост : 

- 15344700 clocks per frame
- 37.00 clocks per pixel
- 20.85 fps








