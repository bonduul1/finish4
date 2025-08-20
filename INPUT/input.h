                                                                                                                                                                                                                                      
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __INPUT_H
#define __INPUT_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "main.h"
  
//------------------ Inputs defenitions -------------------------------------------
#define NUMBER_OF_INPUTS        18 
#define INPUT_SCAN_PERIOD       100


#define FIC_SW_1_Pin            GPIO_PIN_0                      //gugmuli Grain4
#define FIC_SW_1_GPIO_Port      GPIOA
#define FIC_SW_2_Pin            GPIO_PIN_1                      //gugmuli Grain3
#define FIC_SW_2_GPIO_Port      GPIOA
#define FIC_SW_3_Pin            GPIO_PIN_2                      //gugmuli Grain2
#define FIC_SW_3_GPIO_Port      GPIOA
#define FIC_SW_4_Pin            GPIO_PIN_3                      //gugmuli Grain1
#define FIC_SW_4_GPIO_Port      GPIOA

#define FIC_SW_5_Pin            GPIO_PIN_6                      //Right way
#define FIC_SW_5_GPIO_Port      GPIOA
#define FIC_SW_6_Pin            GPIO_PIN_5                      //Left way
#define FIC_SW_6_GPIO_Port      GPIOA

#define FIC_SW_7_Pin            GPIO_PIN_4                      //Charging lamp
#define FIC_SW_7_GPIO_Port      GPIOA

#define FIC_SW_8_Pin            GPIO_PIN_7                      //talkuk  TAILLAMP WAS 6 TAILLAMP
#define FIC_SW_8_GPIO_Port      GPIOA
#define FIC_SW_9_Pin            GPIO_PIN_0                      //Oil Presure
#define FIC_SW_9_GPIO_Port      GPIOE
#define FIC_SW_10_Pin           GPIO_PIN_1                      //Buzzer stop SW
#define FIC_SW_10_GPIO_Port     GPIOE
#define FIC_SW_11_Pin           GPIO_PIN_2                      //Water warning
#define FIC_SW_11_GPIO_Port     GPIOE
  
#define FIC_SW_12_Pin           GPIO_PIN_11                      //2 BON        tseveen 20250610 added 2 bon
#define FIC_SW_12_GPIO_Port     GPIOC
 
#define FIC_SW_13_Pin           GPIO_PIN_12                    // preheating       tseveen 20250612
#define FIC_SW_13_GPIO_Port     GPIOC      

#define FIC_SW_14_Pin           GPIO_PIN_9                    // DIODE       tseveen 20250612 // BHGUI
#define FIC_SW_14_GPIO_Port     GPIOC   

#define FIC_SW_15_Pin           GPIO_PIN_8                    // DFP       tseveen 20250612
#define FIC_SW_15_GPIO_Port     GPIOC
  
#define FIC_SW_16_Pin           GPIO_PIN_14                    // taillight       tseveen 20250612
#define FIC_SW_16_GPIO_Port     GPIOC
  
#define FIC_SW_17_Pin           GPIO_PIN_15                    // CHIPPECHUL       tseveen 20250612
#define FIC_SW_17_GPIO_Port     GPIOC  
 
#define FIC_SW_18_Pin           GPIO_PIN_13                    // MULPULLI       tseveen 20250612
#define FIC_SW_18_GPIO_Port     GPIOC    


#define RIGHT_LIGHT_INPUT       0
#define LEFT_LIGHT_INPUT        1
#define CHARGE_INPUT            2
#define TAIL_LIGHT_INPUT        3
#define OIL_PRESSURE_INPUT      4
#define GRAIN_SENSOR_1          5
#define GRAIN_SENSOR_2          6
#define GRAIN_SENSOR_3          7
#define GRAIN_SENSOR_4          8
#define SW_BUZZER_STOP          9
#define WATER_TEMPERATURE_INPUT 10
#define BON_2                   11      // tseveen 20250610
//#define ENGINE_PRESSURE         12
#define PRE_HEATING             12     // tseveen 20250612
#define DIODE                   13
#define DFP                     14
#define MIDING                  15
#define CHIPPECHUL              16
#define MULPULLI                17  
//------------------ Global variables of corresponding inputs -------------------------------------------
typedef union {
  uint32_t data;
  struct {
    uint32_t leftLamp           : 1;
    uint32_t rightLamp          : 1; 
    uint32_t tailLamp           : 1; 
    uint32_t charge             : 1; 
    uint32_t oilPressure        : 1;
    uint32_t buzzerStop         : 1;
    uint32_t waterTemperature   : 1;
    
    uint32_t grain_1            : 1; 
    uint32_t grain_2            : 1; 
    uint32_t grain_3            : 1;
    uint32_t grain_4            : 1;
    
    uint32_t bon_2              : 1;    // tseveen 20250610
//    uint32_t engine_pressure    : 1;    // tseveen 20250610
    uint32_t pre_heating        : 1;    // tseveen 20250612
    uint32_t diode              : 1;
    uint32_t dfp                : 1;
    uint32_t miding             : 1;
    
    uint32_t chippechul         : 1;
    uint32_t mulpulli           : 1;
    
    uint32_t res                : 14;   // tseveen 20250612 changed 19
  };
} flagInput_t;

extern flagInput_t flagInput;
//------------------ Global functions of IO -------------------------------------------
void input_init();
void read_inputs();
uint8_t read_tail_light(); // tseveen 20250704

#ifdef __cplusplus
}
#endif

#endif /* __INPUT_H */