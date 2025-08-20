#include "input.h"
#include <stdbool.h>

//------------------ Global variables of corresponding inputs -------------------------------------------
flagInput_t flagInput;

uint8_t input_flags[NUMBER_OF_INPUTS];
uint16_t input_timers[NUMBER_OF_INPUTS];
extern uint16_t waterTimer;     // tseveen 20250609
extern uint16_t waterTimer1;     // tseveen 20250609
extern uint16_t waterTimer2;     // tseveen 20250609
extern uint16_t waterTimer3;     // tseveen 20250609
extern uint16_t waterTimer4;     // tseveen 20250609
extern uint16_t waterTimer5;
extern uint16_t waterTimer6;
extern uint16_t waterTimer7;
extern uint16_t waterTimer8;
extern uint16_t waterTimer9;
extern uint16_t waterTimer10;
extern uint16_t waterTimer11;

extern uint8_t tFuelPercent;
//------------------ Inputs variables -------------------------------------------
GPIO_TypeDef* input_ports[NUMBER_OF_INPUTS] = 
{ 
    FIC_SW_5_GPIO_Port, 
    FIC_SW_6_GPIO_Port, 
    FIC_SW_7_GPIO_Port, 
    FIC_SW_8_GPIO_Port,   
    FIC_SW_9_GPIO_Port, 
    FIC_SW_4_GPIO_Port, 
    FIC_SW_3_GPIO_Port, 
    FIC_SW_2_GPIO_Port, 
    FIC_SW_1_GPIO_Port,
    FIC_SW_10_GPIO_Port,
    FIC_SW_11_GPIO_Port,
    FIC_SW_12_GPIO_Port,        // TSEVEEN 20250612
    FIC_SW_13_GPIO_Port,         // TSEVEEN 20250612
    FIC_SW_14_GPIO_Port,
    FIC_SW_15_GPIO_Port,
    FIC_SW_16_GPIO_Port,
    FIC_SW_17_GPIO_Port,
    FIC_SW_18_GPIO_Port
};

uint16_t input_pins[NUMBER_OF_INPUTS] = 
{
    FIC_SW_5_Pin, 
    FIC_SW_6_Pin, 
    FIC_SW_7_Pin, 
    FIC_SW_8_Pin, 
    FIC_SW_9_Pin, 
    FIC_SW_4_Pin, 
    FIC_SW_3_Pin, 
    FIC_SW_2_Pin, 
    FIC_SW_1_Pin,
    FIC_SW_10_Pin,
    FIC_SW_11_Pin,
    FIC_SW_12_Pin,              // TSEVEEN 20250612
    FIC_SW_13_Pin,               // TSEVEEN 20250612
    FIC_SW_14_Pin,
    FIC_SW_15_Pin,
    FIC_SW_16_Pin,
    FIC_SW_17_Pin,
    FIC_SW_18_Pin
};

void input_init()
{
  uint8_t i;

  GPIO_InitTypeDef GPIO_InitStructure = { 0 };

  for(i = 0; i < NUMBER_OF_INPUTS; i++)
  {
    GPIO_InitStructure.Pin = input_pins[i];
    GPIO_InitStructure.Mode =  GPIO_MODE_INPUT;
    GPIO_InitStructure.Pull = GPIO_PULLUP;
    GPIO_InitStructure.Speed = GPIO_SPEED_FREQ_HIGH;
    HAL_GPIO_Init(input_ports[i], &GPIO_InitStructure);
  }
  
  GPIO_InitStructure.Pin = GPIO_PIN_10;      //tseveen 20250422 was pin_7
  GPIO_InitStructure.Mode =  GPIO_MODE_IT_RISING;      //tseveen 20250422;
  GPIO_InitStructure.Pull = GPIO_NOPULL;      //tseveen 20250422
  HAL_GPIO_Init(GPIOC, &GPIO_InitStructure);     //tseveen 20250422 was GPIOA
  
  HAL_NVIC_SetPriority(EXTI15_10_IRQn, 0, 0);   //tseveen 20250422 WAS EXTI9_5_IRQn
  HAL_NVIC_EnableIRQ(EXTI15_10_IRQn);            //tseveen 20250422   WAS EXTI1_IRQn
}

 uint8_t read_tail_light()
{
  if(HAL_GPIO_ReadPin(FIC_SW_16_GPIO_Port, FIC_SW_16_Pin) == GPIO_PIN_SET)
    return FALSE;                                                           
  else               
    return TRUE;
}

void read_inputs()
{
  uint8_t i;
  
  for( i = 0 ; i < NUMBER_OF_INPUTS; i++)
  {
    input_timers[i] += 2;
    
    if(HAL_GPIO_ReadPin(input_ports[i], input_pins[i]) == GPIO_PIN_RESET)
    {
      input_timers[i] = 0;
    }
    if(input_timers[i] >= INPUT_SCAN_PERIOD)
    {
      input_timers[i] = INPUT_SCAN_PERIOD;
      input_flags[i] = OFF;
    }
    else
    {
      if(input_flags[i] == OFF)
      {
        input_flags[i] = ON;
      }
    }
  }
  
  flagInput.rightLamp = input_flags[RIGHT_LIGHT_INPUT];
  flagInput.leftLamp = input_flags[LEFT_LIGHT_INPUT];
  
  flagInput.tailLamp = (input_flags[TAIL_LIGHT_INPUT] == OFF) ? OFF : ON;
  flagInput.charge = (input_flags[CHARGE_INPUT] == OFF) ? OFF : ON; 
 
  flagInput.oilPressure = (input_flags[OIL_PRESSURE_INPUT] == ON) ? OFF : ON;
  flagInput.grain_1 = (input_flags[GRAIN_SENSOR_1]== ON) ? OFF : ON;
  flagInput.grain_2 = (input_flags[GRAIN_SENSOR_2]== ON) ? OFF : ON;
  flagInput.grain_3 = (input_flags[GRAIN_SENSOR_3]== ON) ? OFF : ON;
  flagInput.grain_4 = (input_flags[GRAIN_SENSOR_4]== ON) ? OFF : ON;
  flagInput.buzzerStop = (input_flags[SW_BUZZER_STOP] == ON) ? OFF : ON;
  flagInput.waterTemperature = (input_flags[WATER_TEMPERATURE_INPUT] == ON) ? OFF : ON;
  flagInput.bon_2 = (input_flags[BON_2] == OFF) ? OFF : ON;  //tseveen 20250611
  flagInput.pre_heating = (input_flags[PRE_HEATING] == OFF) ? OFF : ON;   // tseveen 2025612
  flagInput.diode = (input_flags[DIODE] == ON) ? OFF : ON;
  flagInput.dfp = (input_flags[DFP] == OFF) ? OFF : ON;
  flagInput.miding = (input_flags[MIDING] == OFF) ? OFF : ON;
  flagInput.chippechul = (input_flags[CHIPPECHUL] == OFF) ? OFF : ON;
  flagInput.mulpulli = (input_flags[MULPULLI] == ON) ? OFF : ON;
  
  if(flagInput.waterTemperature == OFF)
      waterTimer = 0;
  if(flagInput.bon_2 == OFF)
      waterTimer2 = 0;
  if(flagInput.oilPressure == OFF)
      waterTimer4 = 0;
  if(tFuelPercent > 1)
      waterTimer1 = 0;
  if(flagInput.tailLamp == OFF)
      waterTimer3 = 0;
  if(flagInput.charge == OFF)
      waterTimer5 = 0;
  if(flagInput.diode == OFF)
      waterTimer6 = 0;
  if(flagInput.dfp == OFF)
      waterTimer7 = 0;
  if(flagInput.grain_4 == OFF)
      waterTimer8 = 0;
  if(flagInput.chippechul == OFF)
      waterTimer9 = 0;
  if(flagInput.pre_heating == OFF)
      waterTimer10 = 0;
  if(flagInput.mulpulli == OFF)
      waterTimer11 = 0;
  
  if(waterTimer >= 5000)
      waterTimer = 6000;
  if(waterTimer1 >= 5000)
      waterTimer1 = 6000;
  if(waterTimer2 >= 5000)
      waterTimer2 = 6000;
  if(waterTimer3 >= 5000)
      waterTimer3 = 6000;
  if(waterTimer4 >= 5000)
      waterTimer4 = 6000;
  if(waterTimer5 >= 5000)
      waterTimer5 = 6000;
  if(waterTimer6 >= 10000)
      waterTimer6 = 11000;
  if(waterTimer7 >= 5000)
      waterTimer7 = 6000;
  if(waterTimer8 >= 5000)
      waterTimer8 = 6000;
  if(waterTimer9 >= 5000)
      waterTimer9 = 6000;
  if(waterTimer10 == 40000)
      waterTimer10 = 2000;
  if(waterTimer11 == 5000)
      waterTimer11 = 6000;
}
/*
 void EXTI0_IRQHandler(void)    //tseveen 20250422
{
  HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_0);  //tseveen 20250422
}  // tseveen 20250608 */