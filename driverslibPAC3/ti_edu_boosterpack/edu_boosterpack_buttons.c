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

#include "edu_boosterpack_buttons.h"

#include "driverlib.h"

/*----------------------------------------------------------------------------*/

/*----------------------------------------------------------------------------*/
#define BUTTON_S1_PORT          ( GPIO_PORT_P3)
#define BUTTON_S1_PIN           ( GPIO_PIN5 )
#define BUTTON_S1_EDGE          ( GPIO_HIGH_TO_LOW_TRANSITION )
#define BUTTON_S2_PORT          ( GPIO_PORT_P5)
#define BUTTON_S2_PIN           ( GPIO_PIN1 )
#define BUTTON_S2_EDGE          ( GPIO_HIGH_TO_LOW_TRANSITION )
/*----------------------------------------------------------------------------*/
void edu_boosterpack_buttons_init(void)
{
    MAP_GPIO_setAsInputPin(BUTTON_S1_PORT, BUTTON_S1_PIN);
    MAP_GPIO_clearInterruptFlag(BUTTON_S1_PORT, BUTTON_S1_PIN);
    MAP_GPIO_interruptEdgeSelect(BUTTON_S1_PORT, BUTTON_S1_PIN, BUTTON_S1_EDGE);

    // MAP_GPIO_setAsInputPin(BUTTON_S2_PORT, BUTTON_S2_PIN);
    // MAP_GPIO_clearInterruptFlag(BUTTON_S2_PORT, BUTTON_S2_PIN);
    // MAP_GPIO_interruptEdgeSelect(BUTTON_S2_PORT, BUTTON_S2_PIN, BUTTON_S2_EDGE);
}
/*----------------------------------------------------------------------------*/
void edu_boosterpack_buttons_interrupt_enable(void)
{
    MAP_GPIO_enableInterrupt(BUTTON_S1_PORT, BUTTON_S1_PIN);
    // MAP_GPIO_enableInterrupt(BUTTON_S2_PORT, BUTTON_S2_PIN);

    MAP_Interrupt_enableInterrupt(INT_PORT3);
    // MAP_Interrupt_enableInterrupt(INT_PORT5);
}
/*----------------------------------------------------------------------------*/
void edu_boosterpack_buttons_interrupt_disable(void)
{
    MAP_GPIO_disableInterrupt(BUTTON_S1_PORT, BUTTON_S1_PIN);
    // MAP_GPIO_disableInterrupt(BUTTON_S2_PORT, BUTTON_S2_PIN);

    MAP_Interrupt_disableInterrupt(INT_PORT3);
    // MAP_Interrupt_disableInterrupt(INT_PORT5);
}
/*----------------------------------------------------------------------------*/
