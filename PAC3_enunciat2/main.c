/*
 * Copyright (C) 2017 Universitat Oberta de Catalunya - http://www.uoc.edu/
 *
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *    Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 *    Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the
 *    distribution.
 *
 *    Neither the name of Universitat Oberta de Catalunya nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 *  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 *  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 *  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 *  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 *  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 *  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 *  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 *  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

/*----------------------------------------------------------------------------*/

/* Standard includes */
#include <stdlib.h>
#include <stdio.h>



/* Free-RTOS includes */
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"
#include "portmacro.h"


/* MSP432, Wi-Fi and UART includes */
#include "msp432_launchpad_board.h"
#include "edu_boosterpack_sensors.h"
#include "cli_uart.h"


/*----------------------------------------------------------------------------*/

#define MAIN_TASK_PRIORITY          ( tskIDLE_PRIORITY + 2 )
#define BLINK_TASK_PRIORITY         ( tskIDLE_PRIORITY + 1 )

#define MAIN_STACK_SIZE             ( 1024 )
#define BLINK_STACK_SIZE            ( 128 )

/*----------------------------------------------------------------------------*/

static void BlinkTask(void *pvParameters);
static void MainTask(void *pvParameters);


/*----------------------------------------------------------------------------*/

static void BlinkTask(void *pvParameters) {
    while(true)
    {
        /* Turn red LED on */
        led_red_on();

        /* Sleep for 10 ms */
        vTaskDelay(pdMS_TO_TICKS(10));

        /* Turn red LED on */
        led_red_off();

        /* Sleep for 990 ms */
        vTaskDelay(pdMS_TO_TICKS(990));
    }
}

static void MainTask(void *pvParameters) {
    char message[50];
    float temperature;
    float light;


    /* Initialize sensors */
    edu_boosterpack_sensors_init();
    /* Sleep for 1000 ms */
    vTaskDelay(pdMS_TO_TICKS(1000));

    for(;;){

        CLI_Write("Reading temperature... \n\r");
        /* Read temperature */
        edu_boosterpack_sensors_temperature_read(&temperature);

        CLI_Write("Reading light... \n\r");
        /* Read light */
        edu_boosterpack_sensors_light_read(&light);

        sprintf(message, "Temperature: %.1f; Light: %.1f \n\r", temperature, light);
        CLI_Write((unsigned char*) message);

        /* Sleep for 1000 ms */
        vTaskDelay(pdMS_TO_TICKS(1000));
    }
}

/*----------------------------------------------------------------------------*/

int main(int argc, char** argv)
{
    int32_t retVal = -1;

    /* Initialize the board */
    board_init();
    /* Set up Command Line Interface (UART) */
    CLI_Configure();

    /* Create blink task */
    retVal = xTaskCreate(BlinkTask,
                         "BlinkTask",
                         BLINK_STACK_SIZE,
                         NULL,
                         BLINK_TASK_PRIORITY,
                         NULL );
    if(retVal < 0)
    {
        led_red_on();
        while(1);
    }

    /* Create main task */
    retVal = xTaskCreate(MainTask,
                         "MainTask",
                         MAIN_STACK_SIZE,
                         NULL,
                         MAIN_TASK_PRIORITY,
                         NULL );
    if(retVal < 0)
    {
        led_red_on();
        while(1);
    }

    /* Start the task scheduler */
    vTaskStartScheduler();

    return 0;
}

/*----------------------------------------------------------------------------*/

