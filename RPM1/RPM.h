/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __RPM_H
#define __RPM_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "main.h"

  
extern uint16_t engine_speed;

void rpm_process(void);


#ifdef __cplusplus
}
#endif

#endif /* __RPM_H */