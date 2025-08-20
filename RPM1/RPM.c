#include "RPM.h"
#include <math.h>


// Define constants
#define ALPHA           0.09f // tseveen 0.5 20250605
#define RPM_JUMP_LIMIT  100 // tseveen  added 20250605
#define n               10
uint8_t i = 0;
float a[n] = {0};  
float rpmNewAvg = 0.0f;

uint32_t rpmTimerCaptured;
uint32_t rpmTimerCapturedCAN;
float rpmNew, rpmNew1, rpmOld, rpm, rpmPrevious = 0, rpmNewAvg1;

uint16_t engine_speed;

void rpm_process(void)
{
  // every 100ms calculate rpm
  // 1h = 60 rpm
  // 1s = 100 * 10
  
  if(flagTimer.hundredMs == FALSE)
    return;

  rpmTimerCapturedCAN = rpmTimerCaptured;
  rpmTimerCaptured = 0;

  rpmNew1 = ((float)rpmTimerCapturedCAN * 10.0f * 60.0f) / 9.742f;
  rpmNew = ((int)((rpmNew1+50.0f)/100.0f))*100.0f;
  printf("rpm[%d] = %.2f\n\r", i, rpmNew);
//  printf("\n");
  // rpmNew = ((float)rpmTimerCapturedCAN * (ms to s)) * (hz to rpm) / (per rotation counter);
//  rpmNew = (float)rpmTimerCapturedCAN * 40.0f;
//  rpmNew = ((float)rpmTimerCapturedCAN * 10.0f * 60.0f) / 18.5f;
  // rpmNew = (float)rpmTimerCapturedCAN * 0.14.0f + 18.542; // tseveen 20250519
  
  a[i] = rpmNew;
  i = (i + 1) % n; 

  rpmNewAvg = 0;
  for(uint8_t j = 0; j < n; j++)
  {
    rpmNewAvg += a[j];
  }
  rpmNewAvg /= n;
  rpmNewAvg1 = ((int)((rpmNewAvg) / 100.0f)) * 100.0f;
  
  rpm = rpmOld * (1 - ALPHA) + rpmNewAvg * ALPHA;
//  printf("rpmNewAvg = %.2f\n\r", rpmNewAvg1);
//  printf("\n");
  
  rpmOld = rpm;

  if (rpmPrevious > rpm)
  {
    if ((rpmPrevious - rpm) > RPM_JUMP_LIMIT)
        rpmPrevious -= RPM_JUMP_LIMIT;
  }
  else
  {
    if((rpm - rpmPrevious) > RPM_JUMP_LIMIT)
        rpmPrevious += RPM_JUMP_LIMIT;
  }

  rpm = rpmPrevious;

  if (rpm >= 500)
  {
    if (rpm > 3000)
      rpm = 3000;
      
    engine_speed = (uint16_t)rpm;
  }
  else
  {
    engine_speed = 0;
  }
}

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)   //tseveen 20250422
{
  if (GPIO_Pin == GPIO_PIN_10)  //tseveen 20250422 was gpio_pin_1
  {
    rpmTimerCaptured++;   //tseveen 20250422                                        // 65535 => 
  }
}


