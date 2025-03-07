#include "stdlib.h"
#include "displayController.h"
#include "log.h"
int main(void)
{
    log_info("Starting App");
    display_init();
    log_info("Ending App");
}
