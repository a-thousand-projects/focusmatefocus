INC_E_PAPER 	= ./lib/e-Paper
INC_CONFIG  	= ./lib/config
INC_GUI		= ./lib/GUI
INC_FONTS	= ./lib/fonts

DISPLAY_TYPE	= ./lib/e-Paper/EPD_2in7b.c
USELIB_RPI 	= USE_LGPIO_LIB	


SRC=./lib/e-Paper/EPD_2in7b.c
SRC+=./lib/config/DEV_Config.c  
SRC+=./lib/config/dev_hardware_SPI.c  
SRC+=./lib/fonts/font12CN.c  
SRC+=./lib/fonts/font12.c  
SRC+=./lib/fonts/font16.c 
SRC+=./lib/fonts/font20.c
SRC+=./lib/fonts/font24CN.c 
SRC+=./lib/fonts/font24.c
SRC+=./lib/fonts/font8.c
SRC+=./lib/GUI/GUI_BMPfile.c 
SRC+=./lib/GUI/GUI_Paint.c
SRC+=./src/main.c
	

all:
	gcc -I $(INC_E_PAPER) -I $(INC_CONFIG) -I$(INC_GUI) -I$(INC_FONTS) -Wall -D DEBUG -D RPI -D USE_LGPIO_LIB -o focusmate  $(SRC)  -llgpio -lm




