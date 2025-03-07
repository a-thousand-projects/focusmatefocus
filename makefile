
SRC_DIR				= ./src/
LIB_DIR				= $(SRC_DIR)lib/
WEB_DIR				= $(SRC_DIR)web/
LOG_DIR				= $(LIB_DIR)log/src/

INC_E_PAPER 	= $(LIB_DIR)e-Paper/
INC_CONFIG  	= $(LIB_DIR)config/
INC_GUI				= $(LIB_DIR)GUI/
INC_FONTS			= $(LIB_DIR)fonts/
INC_DISPLAY			= $(SRC_DIR)display/
INC_LOG				= $(LIB_DIR)/log/src

DISPLAY_DIR		= $(SRC_DIR)display/


INCLUDES 			= -I$(INC_FONTS) 
INCLUDES 			+= -I$(INC_GUI)
INCLUDES			+= -I$(INC_CONFIG)
INCLUDES			+= -I$(INC_E_PAPER)
INCLUDES			+= -I$(INC_DISPLAY)
INCLUDES			+= -I$(INC_LOG)


DISPLAY_TYPE	= $(LIB_DIR)e-Paper/EPD_2in7b.c
USELIB_RPI 	= USE_LGPIO_LIB	

SRC=		$(LIB_DIR)config/DEV_Config.c  
#SRC+=$(LIB_DIR)config/dev_hardware_SPI.c  
SRC+=$(LIB_DIR)fonts/font12CN.c  
SRC+=$(LIB_DIR)fonts/font12.c  
SRC+=$(LIB_DIR)fonts/font16.c 
SRC+=$(LIB_DIR)fonts/font20.c
SRC+=$(LIB_DIR)fonts/font24CN.c 
SRC+=$(LIB_DIR)fonts/font24.c
SRC+=$(LIB_DIR)fonts/font8.c
SRC+=$(LIB_DIR)GUI/GUI_BMPfile.c 
SRC+=$(LIB_DIR)GUI/GUI_Paint.c

SRC+=$(LOG_DIR)*.c
SRC+=$(DISPLAY_DIR)*.c

SRC+= $(SRC_DIR)*.c
	

all:
	gcc $(INCLUDES) -Wall -D DEBUG -D RPI -D USE_LGPIO_LIB -D LOG_USE_COLOR -o focusmate  $(SRC)  -llgpio -lm

run:
	./focusmate

clean:
	rm focusmate


