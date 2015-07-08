# sobel-in-steps
Пошаговое руководство процесса разработки DSP-приложения на процессоре NeuroMatrix . 
Руководство состоит из последовательности шагов начиная от запуска простой поведенческой модели до разработки высоко-оптимизированного кода под векторный сопроцессор.
В качестве примера используются широко применяемый в области ЦОС фильтр Собеля.  

*Step by step DSP application development for NeuroMatrix . There are examples of filter Sobel  starting from simple C++ model to high-optimized application using NeuroMatrix vector co-processor*


##Установка утилит и средств разработки под Windows
Для обеспечения работоспособности данной сборки требуется: 

1. SDK для хост-машины: (на выбор)
 * Visual Studio 2005
 * Visual Studio 2013 Express
2. Установить NMSDK 
 * Рекомендуется взять последнюю (бета)версию http://www.module.ru/mb7707/toolchains-win32/nmsdk306en_20150611.zip
3. Для сборки Makefile-ов необходимо иметь установленный 'make'
 * Вариант установки-а: скачать все необходимые утилиты, в том числе инсталлятор 'make', с помощью скрипта \sobel-steps\gnuwin32\get-utils.bat. 
                        Запустить инсталлятор make-3.81.exe. 
						Прописать путь установки в %PATH%. 
 * Вариант установки-b: Самостоятельно 'make' можно установить через Setup, скачав с http://gnuwin32.sourceforge.net/packages/make.htm
 * Вариант установки-с: 'make' можно вызывать из GCC пакета MinGW for Windows http://sourceforge.net/projects/mingw/  
4. Для установки дополнительных библиотек и пакетов ПО разработки НТЦ Модуль необходим распаковщик 'unzip'.
  Скачать 'unzip' можно с помощью скрипта \sobel-steps\gnuwin32\get-utils.bat. 
  Далее необходимо установить unzip-5.51-1.exe либо в текущую директорию , либо в любую другую, но с добавлением пути в %PATH%
5. Makefile поддерживает кроссплатформенную сборку под Windows 7/Windows XP/Linux,  поэтому для обеспечения совместимости таже могут потребоваться unix-утилиты (which,rm,mkdir):  
 * установить утилиты можно скачав их также с помощью скрипта \sobel-steps\gnuwin32\get-utils.bat и затем распаковав с помощью sobel-steps\gnuwin32\unzip-utils.bat в текущую директорию \gnuwin32.
 * Либо самостоятельно со страниц http://gnuwin32.sourceforge.net/packages/which.htm и http://gnuwin32.sourceforge.net/packages/coreutils.htm

##Загрузка библиотек и видеороликов 
 
1. Для работы проекта используются следующие библиотеки НТЦ Модуль:
 * NMPP  - Библиотека поддержки базовых векторно-матричных функций на процессорах семейства NeuroMatrix
 * VSHELL - Программный модуль , представляющий графическую оболочку и API для вывода графики и изображений. 
 * БЗИО (Библиотека загрузки и обмена) для платы MB77.07 либо MC5103

  Скачать и установить компоненты можно командой 'make' из папки '\deps\'. Либо по отдельности командами 'make get' и 'make install'
  
  Если БЗИО не был ранее установлен то для запуска приложений из среды Visual Studio потребуется указать в %PATH% пути к \sobel-steps\deps\mb7707sdk\bin\mb7707load.dll или 
  \sobel-steps\deps\mc5103sdk\bin\mc5103load.dll

2. Загрузка видео-данных  
   Закачать тестовые видеоролики можно командой 'make' из папки \sobel-steps\input
   
### Сборка и запуск
1. Запуск приложения (с автоматической сборкой) выбранного шага осуществляется командой 'make run' из соответствующий папки хостовой части приложения, например 'mb7707\pc\make_vs08\'  либо непосредственно из среды VisualStudio.
2. При работе с платой MB77.07 необходимо переопределить MAC-адрес сетевого адаптера подключенного к плате в  main.cpp. По умолчанию используется 
```cpp
  unsigned char MAC_ADDRESS[] = {0x1a, 0x2b, 0x3c, 0x4d, 0x5e, 0x6f};
```	


### Содержание 
#### Шаг 0. [Реализация прототипа фильтра Собеля для хоста ](/step00_easybmp_prototype/)
 Рассматривается поведенческая модель. Запуск на хосте.
#### Шаг 1. [Подготовка к портированию на NMC](/step01_easybmp_port2nmc/)
 Адаптация кода для обеспечения кроссплатформенности 
#### Шаг 2. [Портирование. Запуск программы на NMC](/step02_easybmp_risc/)
 Осуществялется запуск модели на хосте, на RISC ядре процессора NMC на платах MB77.07 и МС5103
#### Шаг 3. [Портирование алгоритма на векторный процессор](/step03_easybmp_nmpp/)
  Используем векторные функции из состава NMPP 
#### Шаг 4. [Подключение графической оболочки VSHELL ](/step04_vshell_nmpp/)
 Переход от единичной обработки к покадровой используя графическую оболочку VSHELL
#### Шаг 5. [Оптимизация градиентных фильтров  ](/step05_filter_optimization/)
 Переход от двумерной фильтрации к одномерной 
#### Шаг 6. [Оптимизация динамического выделения памяти ](/step06_class/)
 Использование классов.
#### Шаг 7. [Модификация программы для работы во внутренней памяти nmc](/step07_internal_memory/)
 Переход к кусочной обработке изображения во внутренней памяти.
#### Шаг 8. [Устранение граничных дефектов кусочной обработки](/step08_edge_removal/)
#### Шаг 9. [Профилирование](/step09_profiling/)
#### Шаг 10. [Оптимизация векторных функций ](/step10_nmpp_optimization/)
#### Шаг 11. [Оптимизация фильтра выделения горизонтальных границ ](/step11_filter3h/)
#### Шаг 12. [Оптимизация фильтра выделения вертикальных границ ](/step12_filter3v/)
#### Шаг 13. [Распараллеливание входных и выходных потоков данных ](/step13_memory_optimization/)
#### Шаг 14. [Определение пиковой производительности](/step14_max_performance/)
#### Шаг 15. [HDMI вывод на экран в SD разрешении](/step15_hdmi_sd/)
#### Шаг 15. [HDMI вывод на экран в HD разрешении](/step16_hdmi_hd/)


 