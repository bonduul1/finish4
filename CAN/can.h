
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __CAN_H
#define __CAN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "main.h"
  
/* Defines -------------------------------------------------------------------*/
#define TYM_COMBINE                     0x01

#define CAN_TRANSMISSION_TIME           200

#define CAN_COMMAND_REQUEST_ID          0x19F00000
  
#define DIAGNOSTIC_REQUEST_CAN_ID       0x19FF20D0
#define DIAGNOSTIC_RESPONSE_CAN_ID      0x19FFD020
  
#define METAPANEL_DATA_CAN_ID           0x19FFA320

typedef union
{
  uint32_t data;
  struct {
    uint32_t diagnosticRequest          : 1;
    uint32_t diagnosticResponse         : 1;
    uint32_t res                        : 30;
  };
} flagCan_t;

void can_init();
void MX_CAN1_Init(void);

void can_receive_process();
void can_transmit_process();

uint8_t can_transmit(uint32_t id, uint8_t _data[]);
void can_start();
#ifdef __cplusplus
}
#endif

#endif /* __CAN_H */
