/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __WATCHDOG_H
#define __WATCHDOG_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Defines -------------------------------------------------------------------*/
#define WDT_CLK_Pin                     GPIO_PIN_3
#define WDT_CLK_GPIO_Port               GPIOD
#define WDT_EN_Pin                      GPIO_PIN_6
#define WDT_EN_GPIO_Port                GPIOC

void watchdog_init();
void watchdog_enable();
void watchdog_disable();
void watchdog_trigger();
  
#ifdef __cplusplus
}
#endif

#endif /* __WATCHDOG_H */