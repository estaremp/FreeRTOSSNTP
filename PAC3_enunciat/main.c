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
#include "edu_boosterpack_sensors.h"
#include "msp432_launchpad_board.h"
#include "cc3100_boosterpack.h"
#include "cli_uart.h"
#include "sntp.h"
#include "rtc_c.h"

/*----------------------------------------------------------------------------*/

#define SPAWN_TASK_PRIORITY         ( tskIDLE_PRIORITY + 6 )
#define SNTP_TASK_PRIORITY          ( tskIDLE_PRIORITY + 3 )
#define RTC_TASK_PRIORITY           ( tskIDLE_PRIORITY + 2 )
#define BLINK_TASK_PRIORITY         ( tskIDLE_PRIORITY + 1 )

#define SNTP_STACK_SIZE             ( 1024 )
#define RTC_STACK_SIZE              ( 1024 )
#define BLINK_STACK_SIZE            ( 128 )

#define TI_GMT_OFFSET               ( -5 )      /* TI defines the local time at GMT-6 and Spain is at GMT+1 */
#define YEARS_OFFSET                ( 1900 )    /* Time structure defines number of years since 1900 */
/*----------------------------------------------------------------------------*/

static void BlinkTask(void *pvParameters);
static void SNTPTask(void *pvParameters);
static void RTCTask(void *pvParameters);

/*----------------------------------------------------------------------------*/

SemaphoreHandle_t semaphoreSNTP;
SemaphoreHandle_t mutx;

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

static void SNTPTask(void *pvParameters) {
    int32_t retVal;
    int32_t init;
    time_t local_time;
    char message[50];

    init = 0;

    /* Initialize Wi-Fi */
    retVal = wifi_init();
    if (retVal < 0) {
        led_red_on();
        CLI_Write(" Failed to init wifi module. \n\r");
        while(1);
    }

    for(;;){

        xSemaphoreTake( mutx, portMAX_DELAY);

        retVal = sntp_get(&local_time);

        struct tm * x;
        x = gmtime(&local_time);
        x->tm_hour += TI_GMT_OFFSET;
        x->tm_year += YEARS_OFFSET;

        if ((x->tm_year)+YEARS_OFFSET<0){
            x->tm_year = 24+YEARS_OFFSET;
        }

        if (retVal==0){

            sprintf(message, "SNTP info: %02d/%02d/%04d, %02d:%02d:%02d \n\r", x->tm_mday, x->tm_mon, x->tm_year, x->tm_hour, x->tm_min, x->tm_sec);
            CLI_Write((unsigned char*) message);


            RTC_C_Calendar rtc_time = {x->tm_sec,x->tm_min,x->tm_hour,0,x->tm_mday,x->tm_mon,x->tm_year};

            RTC_C_initCalendar(&rtc_time,0);
            RTC_C_startClock();

            if (init==0){
                xSemaphoreGive( semaphoreSNTP );
            }

            init = 1;

        }

        if ((retVal!=0)&&(init==0)){
            xSemaphoreGive( mutx );
            vTaskDelay(pdMS_TO_TICKS(1000));
        } else {
            xSemaphoreGive( mutx );
            vTaskDelay(pdMS_TO_TICKS(600000));
        }

    }
}

static void RTCTask(void *pvParameters) {
    char message[50];
    float temperature;
    float light;

    xSemaphoreTake( semaphoreSNTP, portMAX_DELAY );

    /* Initialize sensors */
    edu_boosterpack_sensors_init();

    /* Sleep for 1000 ms */
    vTaskDelay(pdMS_TO_TICKS(1000));

    for(;;){

        xSemaphoreTake( mutx, portMAX_DELAY );

        RTC_C_Calendar rtc_time;

        rtc_time = RTC_C_getCalendarTime();

        /* Read temperature */
        edu_boosterpack_sensors_temperature_read(&temperature);

        /* Read light */
        edu_boosterpack_sensors_light_read(&light);

        sprintf(message, "%02d/%02d/%04d, %02d:%02d:%02d, Temperature: %.1f; Light: %.1f \n\r", (&rtc_time)->dayOfmonth, (&rtc_time)->month, (&rtc_time)->year, (&rtc_time)->hours, (&rtc_time)->minutes, (&rtc_time)->seconds, temperature, light);
        CLI_Write((unsigned char*) message);

        xSemaphoreGive( mutx );

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

    semaphoreSNTP = xSemaphoreCreateBinary();
    mutx = xSemaphoreCreateMutex();

    /* Start the SimpleLink task to manage CC3100 events*/
    retVal = VStartSimpleLinkSpawnTask(SPAWN_TASK_PRIORITY);
    if(retVal < 0)
    {
        led_red_on();
        while(1);
    }

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

    /* Create sntp task */
    retVal = xTaskCreate(SNTPTask,
                         "SNTPTask",
                         SNTP_STACK_SIZE,
                         NULL,
                         SNTP_TASK_PRIORITY,
                         NULL );
    if(retVal < 0)
    {
        led_red_on();
        while(1);
    }

    /* Create rtc task */
    retVal = xTaskCreate(RTCTask,
                        "RTCTask",
                        RTC_STACK_SIZE,
                        NULL,
                        RTC_TASK_PRIORITY,
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

