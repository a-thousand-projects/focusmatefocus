/*
@file    : displayController.c
@company : A Thousand Projects
@date    : 07-03-2025
@brief   : Controller file to manage and abstract the e-paper functionality
*/
#include "DEV_Config.h"
#include "log.h"

/*****************************************
@function : display_init
@params   : None
          : None
@return   : error code
@notes    : Intililised the display system
*****************************************/
int display_init()
{
    if(DEV_Module_Init()!=0){
        log_error("Failed to initialise display module");
        return -1;
    }
    else
    {
        log_info("DEV Module Initialised");
    }
    return 0;
}