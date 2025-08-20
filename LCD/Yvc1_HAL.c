//add SKLEE 171030


#include <math.h>
#include "Yvc643.h"
#include "Yvc1Ddrv.h"
#include "HD800G48070MT_VC1W.h"
#include "Yvc1Lyr.h"
#include "layoutData.h"
#include "Yvc1Fontctrl.h"
#include "Yvc1Vin.h"

#include "Yvc1_HAL.h"
#include "dwt_stm32_delay.h"
#include "tw9990.h"
#include "sound.h"
#include "can.h"
#include "spi.h"
#include "AT93C56.h"
#include "adc.h"
#include "input.h"
#include "output.h" 
#include "timer.h"
#include "RPM.h"
/*----------------------------------------------- Algorihtm -----------------------------------------------*/
typedef struct {
  uint8_t       percentage;
  uint8_t       resistance;
  uint8_t       r1;                     // 90Om --> Our hardware
  uint8_t       voltage;
  uint16_t      raw_data;
} t_fuel_type;
#define NUMBER_OF_STEP_IN_FUEL          21
#define BETWEEN(x, low, high)  ((x) > (low) && (x) < (high)) 

const t_fuel_type FUEL_ADC_PERCENTAGES[NUMBER_OF_STEP_IN_FUEL] = 
{   
  // percentage, Om, R1, Voltage, raw_data
  { 0,    105,    90,     5,      3341 }, 
  { 5,    96,     90,     5,      3202 }, 
  { 10,   90,     90,     5,      3102 }, 
  { 14,   83,     90,     5,      2977 }, 
  { 20,   78,     90,     5,      2877 }, 
  { 26,   70,     90,     5,      2714 }, 
  { 30,   65,     90,     5,      2606 }, 
  { 35,   60,     90,     5,      2490 }, 
  { 40,   55,     90,     5,      2365 }, 
  { 44,   50,     90,     5,      2230 }, 
  { 50,   44,     90,     5,      2059 }, 
  { 55,   40,     90,     5,      1933 }, 
  { 59,   36,     90,     5,      1800 }, 
  { 65,   32,     90,     5,      1661 }, 
  { 70,   28,     90,     5,      1511 }, 
  { 74,   25,     90,     5,      1391 }, 
  { 79,   21,     90,     5,      1223 }, 
  { 86,   16,     90,     5,      991 }, 
  { 91,   13,     90,     5,      847 }, 
  { 95,   10,     90,     5,      690 }, 
  { 100,  3,      90,     5,      286 }
};
/*
  Full ( 100% ) - liter = 90 - 10 (sensor starting) = 80L / 20 = 4L = 5%
  Empty ( 0 % ) - 2.74V = 0x0D4D
  Sensor absent - 3.01V = 0xFFF = 4095
*/

flag_t flag;

uint8_t tFuelGage;
uint8_t tFuelPercent;
float tPowerVoltage;
float tFuelVoltage;
float tTemperature;
float tEngineSpeed;

//#define ADC_AVERAGE_FIRST_TIME  5
//#define ADC_AVERAGE_NUMBER      100                                            // 100 * 100ms = 10000ms = 10s
/*----------------------------------------------- Algorihtm -----------------------------------------------*/

/*----------------------------------------------- LCD -----------------------------------------------*/
pageState_t currentPageState;
pageState_t previousPageState;

int16_t index = 0;
uint16_t time_update;
/*----------------------------------------------- LCD -----------------------------------------------*/

/*----------------------------------------------- Memory -----------------------------------------------*/

float jobHour;
float engineHour;
float engineOilHour;
float missionOilHour;

uint16_t lcdBrigthnessNight;
uint16_t lcdBrigthnessDay;

uint16_t numberOfEngineOilExchange;
uint16_t numberOfMissionOilExchange;

/*----------------------------------------------- Memory -----------------------------------------------*/


/*----------------------------------------------- Warning -----------------------------------------------*/

flagWarning_t flagWarning;
/*
typedef struct                          // Do not change the sequence of the structure
{
  wIndex_t      index;
  wFlag_t       flag;
  wState_t      state;
  wLevel_t      level;
  wPage_t       page;
  
  uint8_t       checkRPM;
    
  t_soundType   soundType;
  uint16_t      soundPeriodNumber;
  uint16_t      soundPeriod;
  uint16_t      soundOnDuration;
  uint16_t      soundOffDuration;
  uint16_t      timerWarning;
} warning_t;

warning_t warnings[TOTAL_NUMBER_OF_WARNINGS] = 
{
  {
    W_FUEL_EMPTY,               // index
    W_FLAG_PASSIVE,             // flag
    W_STATE_NO_ERROR,           // state
    W_LEVEL_ACTIVE,             // level
    W_NO_PAGE,                  // page
    FALSE,                      // checkRPM
    WARNING_SOUND,              // soundType
    5,                          // soundPeriodNumber
    1000,                       // soundPeriod
    1000,                       // soundOnDuration
    0,                          // soundOffDuration
    0,                          // timerWarning
  },
  
  {
    W_ENGINE_OIL_EXCHANGE,      // index
    W_FLAG_PASSIVE,             // flag
    W_STATE_NO_ERROR,           // state
    W_LEVEL_ACTIVE,             // level
    W_NO_PAGE,                  // page
    FALSE,                      // checkRPM
    WARNING_SOUND,              // soundType
    5,                          // soundPeriodNumber
    1000,                       // soundPeriod
    1000,                       // soundOnDuration
    0,                          // soundOffDuration
    0,                          // timerWarning
  },
  
  {
    W_MISSION_OIL_EXCHANGE,     // index
    W_FLAG_PASSIVE,             // flag
    W_STATE_NO_ERROR,           // state
    W_LEVEL_ACTIVE,             // level
    W_NO_PAGE,                  // page
    FALSE,                      // checkRPM
    WARNING_SOUND,              // soundType
    5,                          // soundPeriodNumber
    1000,                       // soundPeriod
    1000,                       // soundOnDuration
    0,                          // soundOffDuration
    0,                          // timerWarning
  },
  
  {
    W_BATTERY,                  // index
    W_FLAG_PASSIVE,             // flag
    W_STATE_NO_ERROR,           // state
    W_LEVEL_ACTIVE,             // level
    W_NO_PAGE,                  // page
    FALSE,                      // checkRPM
    WARNING_SOUND,              // soundType
    256,                        // soundPeriodNumber
    1000,                       // soundPeriod
    1000,                       // soundOnDuration
    0,                          // soundOffDuration
    0,                          // timerWarning
  },
  

  // Two pages error
  {
    W_ENGINE_STOP_SWITCH,       // index
    W_FLAG_PASSIVE,             // flag
    W_STATE_NO_ERROR,           // state
    W_LEVEL_ON_TOP,             // level
    W_NO_PAGE,                  // page
    TRUE,                       // checkRPM
    WARNING_SOUND,              // soundType
    256,                        // soundPeriodNumber
    500,                        // soundPeriod
    1000,                       // soundOnDuration
    0,                          // soundOffDuration
    0,                          // timerWarning
  },

  {
    W_CHARGE,                   // index
    W_FLAG_PASSIVE,             // flag
    W_STATE_NO_ERROR,           // state
    W_LEVEL_ACTIVE,             // level
    W_NO_PAGE,                  // page
    TRUE,                       // checkRPM
    WARNING_SOUND,              // soundType
    256,                        // soundPeriodNumber
    1000,                       // soundPeriod
    1000,                       // soundOnDuration
    0,                          // soundOffDuration
    0,                          // timerWarning
  },
  
  {
    W_ENGINE_OIL_PRESSURE,      // index
    W_FLAG_PASSIVE,             // flag
    W_STATE_NO_ERROR,           // state
    W_LEVEL_ACTIVE,             // level
    W_NO_PAGE,                  // page
    TRUE,                       // checkRPM
    WARNING_SOUND,              // soundType
    256,                        // soundPeriodNumber
    1000,                       // soundPeriod
    1000,                       // soundOnDuration
    0,                          // soundOffDuration
    0,                          // timerWarning
  },
  
  {
    W_ENGINE_COOLING_TEMPERATURE,               // index
    W_FLAG_PASSIVE,             // flag
    W_STATE_NO_ERROR,           // state
    W_LEVEL_ACTIVE,             // level
    W_NO_PAGE,                  // page
    FALSE,                      // checkRPM
    WARNING_SOUND,              // soundType
    256,                        // soundPeriodNumber
    1000,                       // soundPeriod
    1000,                       // soundOnDuration
    0,                          // soundOffDuration
    0,                          // timerWarning
  },
  
  {
    W_TALKUK_BIN,               // index
    W_FLAG_PASSIVE,             // flag
    W_STATE_NO_ERROR,           // state
    W_LEVEL_ACTIVE,             // level
    W_NO_PAGE,                  // page
    TRUE,                       // checkRPM
    WARNING_SOUND,              // soundType
    256,                        // soundPeriodNumber
    500,                        // soundPeriod
    10000,                      // soundOnDuration                              // 10000 ms ON
    20000,                      // soundOffDuration                             // 10000 ms ON
    0,                          // timerWarning
  },
  
  {
    W_2_SENSOR,                 // index
    W_FLAG_PASSIVE,             // flag
    W_STATE_NO_ERROR,           // state
    W_LEVEL_ACTIVE,             // level
    W_NO_PAGE,                  // page
    TRUE,                       // checkRPM
    WARNING_SOUND,              // soundType
    256,                        // soundPeriodNumber
    500,                        // soundPeriod
    10000,                      // soundOnDuration
    20000,                      // soundOffDuration
    0,                          // timerWarning
  },
  
  {
    W_GUGMUL_MANYANG,           // index
    W_FLAG_PASSIVE,             // flag
    W_STATE_NO_ERROR,           // state
    W_LEVEL_ACTIVE,             // level
    W_NO_PAGE,                  // page
    TRUE,                       // checkRPM
    WARNING_SOUND,              // soundType
    256,                        // soundPeriodNumber
    1000,                       // soundPeriod
    1000,                       // soundOnDuration
    0,                          // soundOffDuration
    0,                          // timerWarning
  },
}; */

/*----------------------------------------------- Main -----------------------------------------------*/
static uint8_t grain_sensor_4_blink;
static int16_t Angle_Object_prev;

#define NUMBER_OF_FUEL_IMAGES                   10
static uint8_t isFuelLower = 0;

/*----------------------------------------------- Main -----------------------------------------------*/

/*----------------------------------------------- Memory -----------------------------------------------*/
uint16_t nvJobHourMsb;
uint16_t nvJobHourLsb;
uint16_t nvEngineHourMsb;
uint16_t nvEngineHourLsb;
uint16_t nvEngineOilHourMsb;
uint16_t nvEngineOilHourLsb;
uint16_t nvMissionOilHourMsb;
uint16_t nvMissionOilHourLsb;
uint16_t nvNumberOfEngineOilExchange;
uint16_t nvNumberOfMissionOilExchange;
uint16_t nvLcdBrigthnessNight;
uint16_t nvLcdBrigthnessDay;

nvData_t settingsData[NUMBER_OF_CONFIGURATION] = 
{  
  //min,    max,            default,        value
  { 0,      0xFFFF,         0,              &nvJobHourMsb                   },      // 0 --> CONFIGURE_JOB_HOUR_MSB
  { 0,      0xFFFF,         0,              &nvJobHourLsb                   },      // 1 --> CONFIGURE_JOB_HOUR_LSB
  { 0,      0xFFFF,         0,              &nvEngineHourMsb                },      // 2 --> CONFIGURE_ENGINE_HOUR_MSB
  { 0,      0xFFFF,         0,              &nvEngineHourLsb                },      // 3 --> CONFIGURE_ENGINE_HOUR_LSB
  { 0,      0xFFFF,         0,              &nvEngineOilHourMsb             },      // 4 --> CONFIGURE_ENGINE_OIL_HOUR_MSB
  { 0,      0xFFFF,         0,              &nvEngineOilHourLsb             },      // 5 --> CONFIGURE_ENGINE_OIL_HOUR_LSB
  { 0,      0xFFFF,         0,              &nvMissionOilHourMsb            },      // 6 --> CONFIGURE_MISSION_OIL_HOUR_MSB
  { 0,      0xFFFF,         0,              &nvMissionOilHourLsb            },      // 7 --> CONFIGURE_MISSION_OIL_HOUR_LSB
  { 0,      0xFFFF,         0,              &nvNumberOfEngineOilExchange    },      // 8 --> CONFIGURE_ENGINE_OIL_EXCHANGE_COUNTER
  { 0,      0xFFFF,         0,              &nvNumberOfMissionOilExchange   },      // 9 --> CONFIGURE_MISSION_OIL_EXCHANGE_COUNTER
  { 1,      1000,           5,              &nvLcdBrigthnessNight           },      // 10 --> CONFIGURE_LCD_BRIGHTNESS_NIGHT
  { 1,      1000,           950,            &nvLcdBrigthnessDay             },      // 11 --> CONFIGURE_LCD_BRIGHTNESS_DAY
};

uint8_t check_setting_data(uint8_t _isSave, uint8_t sourceAddress, uint16_t data)
{      
  uint8_t isSave = FALSE;
  
  if(sourceAddress >= NUMBER_OF_CONFIGURATION)
    return FALSE;
  
  if(_isSave == TRUE)
  {
    if(*(settingsData[sourceAddress].value) == data)
    {
      // there no update is needed because the saved data is NOT changed
      return TRUE;
    }
    
    isSave = TRUE;
    
    if((data <= settingsData[sourceAddress].maxValue) && 
       (data >= settingsData[sourceAddress].minValue))
    {
      *(settingsData[sourceAddress].value) = data;
    }
    else {
      isSave = FALSE;
    }
  } 
  else {
    if((*(settingsData[sourceAddress].value) > settingsData[sourceAddress].maxValue) || 
       (*(settingsData[sourceAddress].value) < settingsData[sourceAddress].minValue))
    {
      *(settingsData[sourceAddress].value) = settingsData[sourceAddress].defaultValue;
      isSave = TRUE;
    }
  }
  
  if(isSave == TRUE)
  {
    write_enable_93c56();
    write_93c56(sourceAddress * 2,  *(settingsData[sourceAddress].value));
    write_disable_93c56();
    return TRUE;
  }
  
  return FALSE;
}

float getEngineHour()
{
  return engineHour;
}

uint16_t get_memory(uint8_t* data)
{
  uint16_t temp = 0;
  
  if(data[1] < NUMBER_OF_CONFIGURATION)
  {
    temp = *(settingsData[data[1]].value);
  }
  
  return temp;
}

uint16_t set_memory(uint8_t* data)
{
  uint16_t temp = 0;
  
  if(data[1] < NUMBER_OF_CONFIGURATION)
  {
    temp = (data[7] << 8) | data[6];
    check_setting_data(TRUE, data[1], temp);
    
    memory_update();
    temp = *(settingsData[data[1]].value);
    
/*    if((data[1] == CONFIGURE_LCD_BRIGHTNESS_DAY) || (data[1] == CONFIGURE_LCD_BRIGHTNESS_NIGHT))
    {
      if(flagInput.tailLamp == ON)
      {
        update_timer(lcdBrigthnessNight);
      }
      else
      {
        update_timer(lcdBrigthnessDay);
      }
    } */ // tseveen 20250610
  }
  return temp;
}


void default_memory_update()
{
  uint8_t i;
  
  for(i = 0; i < NUMBER_OF_CONFIGURATION; i++)
  {
    check_setting_data(TRUE, i, settingsData[i].defaultValue);
  }
  memory_update();
}

void memory_update()
{
  uint8_t i;
  
  for(i = 0; i < NUMBER_OF_CONFIGURATION; i++)
  {
    *(settingsData[i].value) = read_93c56(i * 2);

    check_setting_data(FALSE, i, *(settingsData[i].value));
  }
  
  jobHour = (float)(((uint32_t)nvJobHourMsb << 16) + nvJobHourLsb) * 0.01;
  engineHour = (float)(((uint32_t)nvEngineHourMsb << 16) + nvEngineHourLsb) * 0.01;
  engineOilHour = (float)(((uint32_t)nvEngineOilHourMsb << 16) + nvEngineOilHourLsb) * 0.01;
  missionOilHour = (float)(((uint32_t)nvMissionOilHourMsb << 16) + nvMissionOilHourLsb) * 0.01;
  numberOfEngineOilExchange  = nvNumberOfEngineOilExchange;
  numberOfMissionOilExchange = nvNumberOfMissionOilExchange;
  lcdBrigthnessNight = nvLcdBrigthnessNight;
  lcdBrigthnessDay = 950;
}

/*----------------------------------------------- Memory -----------------------------------------------*/

// ------------------------ Implementation of Functions ------------------------ 

uint8_t YGV643_SPI_TXRX(uint8_t x)
{
  uint8_t data;
  SPI_TransmitReceive(&x, &data, 1, 100);
  return data;
}

void Y643_CS_Control(uint8_t x)
{
  if(x == 0)
  {
    YGV643_ENABLE_LOW;
    //28 ns needed
    __asm volatile("NOP");                      // (1/168MHz)*5 =~ 29.76
    __asm volatile("NOP");
    __asm volatile("NOP");
    __asm volatile("NOP");
    __asm volatile("NOP");
  }
  else
  {
    __asm volatile("NOP");                      // (1/168MHz)*5 =~ 29.76
    __asm volatile("NOP");
    __asm volatile("NOP");
    __asm volatile("NOP");
    __asm volatile("NOP");
    YGV643_ENABLE_HIGH;
  }
}

/***********************************************************************************************************************
* Function Name: YVC_Reset
* Description  : VC1H Hardware reset
* Arguments    : void
* Return Value : None
***********************************************************************************************************************/
void YVC_Reset(void)
{
  //TIMER_WAIT_MSEC(10);
  WaitMSec(10);
}

/***********************************************************************************************************************
* Function Name: WaitMSec
* Description  : waiting ms 
* Arguments    : UINT16 d 
* Return Value : void
***********************************************************************************************************************/

void WaitMSec(uint16_t cnt)
{
  user_delay(cnt);
}

/***********************************************************************************************************************
* Function Name: Y643_WRITE_bytes
* Description  : Burst write function. matching to user spi driver
* Arguments    : None
* Return Value : TRUE or FALSE        
***********************************************************************************************************************/
uint8_t YVC_BurstWritePort(uint8_t pPort_num, const uint8_t *uWr_data, uint16_t num)
{
  static uint8_t wdt_counter_local = 0;
  uint8_t cmd = pPort_num;
  Y643_CS_Control(0);
  
  SPI_Transmit(&cmd, 1, 100);
  SPI_Transmit((uint8_t*) uWr_data, num, 100);
  
  Y643_CS_Control(1);
  wdt_counter_local++;
  if(wdt_counter_local > 5)
  {
    wdt_counter_local = 0;
    watchdog_trigger();
  }
  
  return TRUE;
}
/***********************************************************************************************************************
* Function Name: Y643_WRITE_bytes
* Description  : Burst write function. matching to user spi driver
* Arguments    : None
* Return Value : TRUE or FALSE        
***********************************************************************************************************************/
uint8_t YVC_BurstReadPort(uint8_t pPort_num,  uint8_t *uRd_data, uint16_t num)
{
  uint8_t ReadCmd[1] = {pPort_num | 0x08};
  
  Y643_CS_Control(0);
  SPI_Transmit(ReadCmd, 1, 100);
  SPI_Receive(uRd_data, num, 100);
  
  Y643_CS_Control(1);
  return TRUE;
}

/***********************************************************************************************************************
* Function Name: Y643_WRITE
* Description  : Single write function. matching to user spi driver
* Arguments    : None
* Return Value : TRUE or FALSE   
***********************************************************************************************************************/
uint8_t YVC_WritePort(uint8_t pPort_num, uint8_t uWr_data)
{
  uint8_t tx[2] = {pPort_num, uWr_data};
  Y643_CS_Control(0);
  
  SPI_Transmit(tx, 2, 100);
  
  Y643_CS_Control(1);
  
  return TRUE;  
}

/***********************************************************************************************************************
* Function Name: Y643_READ
* Description  : Single read function. matching to user spi driver
* Arguments    : None
* Return Value : uint8_t read value 1byte 
***********************************************************************************************************************/
uint8_t YVC_ReadPort(uint8_t pPort_num)
{
  uint8_t readData = 0;
  uint8_t tx[1] = {pPort_num | 0x08};

  Y643_CS_Control(0);
  SPI_Transmit(tx, 1, 100);
  SPI_Receive(&readData, 1, 100);
  Y643_CS_Control(1);
  
  return readData;
}

// Reverses a string 'str' of length 'len' 
void reverse(char* str, int len) 
{
  int i = 0, j = len - 1, temp; 
  while(i < j)
  {
    temp = str[i]; 
    str[i] = str[j]; 
    str[j] = temp; 
    i++; 
    j--; 
  } 
}

// Converts a given integer x to string str[].  
// d is the number of digits required in the output.  
// If d is more than the number of digits in x,  
// then 0s are added at the beginning. 
int intToStr(int x, char str[], int d) 
{ 
    int i = 0; 
    while(x)
    {
      str[i++] = (x % 10) + '0'; 
      x = x / 10; 
    } 

    // If number of digits required is more, then 
    // add 0s at the beginning 
    while (i < d)
    {
      str[i++] = '0'; 
    }
    
    reverse(str, i); 
    str[i] = '\0'; 
    return i; 
} 

// Converts a floating-point/double number to a string. 
void ftoa(float _n, char* res, int afterpoint) 
{ 
  float n = _n;
  int s = 0;
  
  if(n < 0)
  {
    n = n*(-1);
    s = 1;
    res[0] = '-';
  }
  // Extract integer part 
  int ipart = (int)(n);
  

  // Extract floating part 
  float fpart = n - (float)ipart; 

  // convert integer part to string 
  int i = intToStr(ipart, res + s, 0); 

  // check for display option after point 
  if(afterpoint != 0)
  {
      res[i] = '.'; // add dot 

      // Get the value of fraction part upto given no. 
      // of points after dot. The third parameter  
      // is needed to handle cases like 233.007 
      fpart = fpart * pow(10, afterpoint); 

      intToStr((int)fpart, res + i + 1, afterpoint); 
  }
  // added enkhbat this condition
  if((res[0] == 0) || ((res[0] == '.') && (res[1] == '0')))
  {
    res[0] = '0';
    res[1] = '\0';
  }
  else if((res[0] == '.') && (res[1] != '0'))
  {
    res[2] = res[1];
    res[1] = '.';
    res[0] = '0';
  }
}


void External_Video_Input_Init(void)
{
  T_YVC1_VIN_DIGITAL_IN        tYvc1VinDigitalIn;
  T_YVC1_VIN_DIGITAL_SYNC      tYvc1VinDigitalSync;
  T_YVC1_VIN_BCD_AREA          tYvc1VinBcdArea;
  T_YVC1_VIN_BCD_SCALE         tYvc1VinBcdScale;

  tYvc1VinDigitalIn.DVIF = 1;                          // 0 - RGB, 1 - 8bit YCrCb, 2 - 16bit YCrCb
  tYvc1VinDigitalIn.DVINTL = 0;                        // 0 - Progressive, 1 - Interlaced
  tYvc1VinDigitalIn.DVPAL = 0;                         // 0 - NTSC, 1 - PAL
  tYvc1VinDigitalIn.DVSP = 0;                          // 0 - L Active,1 - H Active
  tYvc1VinDigitalIn.CRCBS = 0;                         // 0 - Cb-Cr, 1 - Cr-Cb
  YVC1_VinDigitalIn(&tYvc1VinDigitalIn);
 
  tYvc1VinDigitalSync.DVCSE = 1;                       // 0 - DHSIN_N pin to feed horizontal and DVSIN_N pin to feed vertical sync,    1 - DHSIN_N pin feed composite sync signal
  tYvc1VinDigitalSync.DVCSM = 0;                       // 0 - Uses the typical values of automatically-detect horizontal period and the horizonta sync pulse width, DVHTL and DVHSW are used
  tYvc1VinDigitalSync.DVHTL = 0;                       // 0 to 2047
  tYvc1VinDigitalSync.DVHSW = 0;                       // 0 to 511
  YVC1_VinDigitalSync(&tYvc1VinDigitalSync);

#if defined (LCD_AT070TN94) || defined(LCD_MD070NF04_60ID_18A_AM)
  YVC1_VinBcdXPos(145);                                // set the starting dot to display the external video: 8-2047.75 (0.25 steps)
  YVC1_VinBcdVSA(-20);                                 // 

  tYvc1VinBcdArea.Sx =    80;                          // sx : 1-2047
  tYvc1VinBcdArea.Sy =    25;                          // sy : 1-1023      // changed on 6 April 2021
  tYvc1VinBcdArea.Width = 805;                         // width : 1-2047
  tYvc1VinBcdArea.Height = 480;                        // height : 1-1023
   
  YVC1_VinBcdArea(&tYvc1VinBcdArea);
 
  tYvc1VinBcdScale.Enable = 1;                         // 0 (FALSE) - Scaling function OFF, 1 - Scaling function ON
  tYvc1VinBcdScale.Mode = 0;                           // 0 - Bilinear method, 1 - Nearest neighbor method
  tYvc1VinBcdScale.Fx = 1.2f;                          // 0.25 to 4096
  tYvc1VinBcdScale.Fy = 2.0f;                          // 0.25 to 4096
#elif defined(LCD_RFF700A9_AWH_DNN)
  YVC1_VinBcdXPos(140);                                // set the starting dot to display the external video: 8-2047.75 (0.25 steps)
  YVC1_VinBcdVSA(20);                                  // 
 
  tYvc1VinBcdArea.Sx =    100;                         // sx : 1-2047
  tYvc1VinBcdArea.Sy =    100;                         // sy : 1-1023
  tYvc1VinBcdArea.Width = 800;                         // width : 1-2047
  tYvc1VinBcdArea.Height = 480;                        // height : 1-1023
   
  YVC1_VinBcdArea(&tYvc1VinBcdArea);
 
  tYvc1VinBcdScale.Enable = 1;                         // 0 (FALSE) - Scaling function OFF, 1 - Scaling function ON
  tYvc1VinBcdScale.Mode = 0;                           // 0 - Bilinear method, 1 - Nearest neighbor method
  tYvc1VinBcdScale.Fx = 1.2f;                          // 0.25 to 4096
  tYvc1VinBcdScale.Fy = 2.0f;                          // 0.25 to 4096
#endif
  YVC1_VinBcdScale(&tYvc1VinBcdScale);                   
  YVC1_VinBcdExtSync(1);                               // 1 (TRUE): External sync mode, 0 (FALSE): Self-propelled mode

  YVC1_VinBcdDisp(1, 0);                                // First arg: 0 (FALSE) - Does not display the backdrop plane, 1 (TRUE) - Displays the backdrop plane
}

void ygv643_initialize()
{
  YGV643_RESET_LOW;      
  LCD_RST_LOW;               // LCD Reset
  user_delay(10);

  YGV643_RESET_HIGH;       // CHIP RESET... 
  LCD_RST_HIGH;

  user_delay(10);
  
    if(read_tail_light() == TRUE)
  {
    update_timer(lcdBrigthnessNight);
  }
  else
  {
    update_timer(lcdBrigthnessDay);
  }
  
//  update_timer(900);

  if(YVC1_Init(&tYvc1Data) == FALSE)
  {
    user_delay(1);
  }
  //YVC1_WriteReg
  YVC1_WritePlts(PaletteData_ADDR, PaletteData_LYT, PaletteData_SIZE );
  //YVC1_WriteTbls

  YVC1_SetFontTypAttr(0,(const T_Y643_FONT_TYPATTR *) Time_FC.tYgfontData);                     // 48
  YVC1_SetFontTypAttr(1,(const T_Y643_FONT_TYPATTR *) can_raw_data_1_FC.tYgfontData);           // 30
  YVC1_SetFontTypAttr(2,(const T_Y643_FONT_TYPATTR *) can_data_eg1_FC.tYgfontData);             // 28
  YVC1_SetFontTypAttr(3,(const T_Y643_FONT_TYPATTR *) Text_FC.tYgfontData);                     // 24
  YVC1_FlipTbl();
  YVC1_SetFontTypAttr(0,(const T_Y643_FONT_TYPATTR *) Time_FC.tYgfontData);                     // 48
  YVC1_SetFontTypAttr(1,(const T_Y643_FONT_TYPATTR *) can_raw_data_1_FC.tYgfontData);           // 30
  YVC1_SetFontTypAttr(2,(const T_Y643_FONT_TYPATTR *) can_data_eg1_FC.tYgfontData);             // 28
  YVC1_SetFontTypAttr(3,(const T_Y643_FONT_TYPATTR *) Text_FC.tYgfontData);                     // 24

  YVC1_CpuSetAllLyrDisp(TRUE);
}

void ygb643_tw9990_initialize()
{
  spi2_enable();
  ygv643_initialize();
// Removed on 2024.10.16 Because camera function is NOT in this program tw9990_initialize(1);
  
  YVC1_CpuSetAllLyrDisp(TRUE);
  
  currentPageState = LOGO_PAGE;
}

uint16_t draw_logo_page(uint16_t _imgCnt)
{
  static uint16_t logoIndex = 0;
  static uint16_t logoTimer = 0;
  
  uint16_t imgCnt = _imgCnt;
  
  YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)UNITS_GT[Layer_1 + (logoIndex * 2)], -25, 0, 0);
  YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)UNITS_GT[Layer_2 + (logoIndex * 2)], -25, 0, 0);
  
  logoIndex++;
  if(logoIndex >= (NUMBER_OF_LOGO_IMAGE - 1))
  {
    currentPageState = MAIN_PAGE;
    logoIndex = NUMBER_OF_LOGO_IMAGE - 1;
    logoTimer += 100;
    if(logoTimer >= LOGO_TIME)
    {
      logoTimer = LOGO_TIME;
      currentPageState = MAIN_PAGE;
      sound_clear(TRUE);
    }
  }
  
  return imgCnt;
}

/*------------------------------------- Main page -------------------------------------*/
uint16_t timer_inducement_severity_for_DEF_tank_level = 0;
uint16_t timer_operator_inducement_active_for_SCR_system_failure = 0;
uint16_t timer_pending_scr_inducement_severity = 0;
uint8_t load_rates_counter = 0;      

uint8_t imageSwitchOne = FALSE;
uint8_t imageSwitchTwo = FALSE;
uint16_t timerImageSwitchOne = 0;
uint16_t timerImageSwitchTwo = 0;
uint16_t waterTimer =0; // // tseveen 20250608
uint16_t waterTimer1 =0; // // tseveen 20250608
uint16_t waterTimer2 =0; // // tseveen 20250608
uint16_t waterTimer3 =0; // // tseveen 20250608
uint16_t waterTimer4 =0; // // tseveen 20250608
uint16_t waterTimer5 =0;
uint16_t waterTimer6 =0;
uint16_t waterTimer7 =0;
uint16_t waterTimer8 =0;
uint16_t waterTimer9 =0;
uint16_t waterTimer10 =0;
uint16_t waterTimer11 =0;


static uint16_t clockActionNumber = 0;
static uint16_t timeClockAction = 0;


uint16_t draw_main_page(uint16_t _imgCnt)
{
  uint16_t imgCnt = _imgCnt;
  uint8_t i;
  
  int16_t Angle_Object = 0;
  C08 hour_string[8];
  
  // ----------------------------- Background ----------------------------- 
  YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[BG_001]);
  YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[BG_002]);
  YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[BG_kukmul]);        // tseveen sub 20250522
//  YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[yusuu]); // tseveen 20250522 added ysusu
  

  // ----------------------------- WarningBox ----------------------------- 

  sound_clear(TRUE);    // tseveen 20250611
  
  if (flagInput.waterTemperature)
  {
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[enginecheck01]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[check002DeSox_active]);
  }
  if (flagInput.pre_heating)
  {
    waterTimer10+=100;
    if(flagInput.pre_heating && waterTimer10 > 1000){
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[check001Desox_inhibit_by_switch]);
    }
  }
  if (flagInput.oilPressure)
  {
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[oil_lamp]);
  }
  if (flagInput.miding)
  {
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[front_light]);
  }  
  
  if(flagInput.buzzerStop == ON)
  {
    sound_clear(TRUE);
    waterTimer = 6000;
    waterTimer1 = 6000;
    waterTimer2 = 6000;
    waterTimer3 = 6000;
    waterTimer4 = 6000;
    waterTimer5 = 6000;
    waterTimer6 = 11000;
    waterTimer7 = 6000;
    waterTimer8 = 6000;
    waterTimer9 = 6000;
    waterTimer11 =6000;
  }
  else if (flagInput.waterTemperature && waterTimer < 5000) // tseveen 20250608
  {
    waterTimer+=100; // tseveen 20250608
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[yusu]);
    set_warning_sound(0xFFFF, 1000, 1000, 3);
    if (BETWEEN(waterTimer, 500, 1000) || BETWEEN(waterTimer, 1500, 2000) || BETWEEN(waterTimer, 2500, 3000) || BETWEEN(waterTimer, 3500, 4000) || BETWEEN(waterTimer, 4500, 5300)){
         sound_clear(TRUE);
      }
    }
  else if (flagInput.bon_2 && waterTimer2 < 5000)
    {
      waterTimer2+=100;
      YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[bon_2]);
      set_warning_sound(0xFFFF, 1000, 1000, 3);
      if (BETWEEN(waterTimer2, 500, 5100)){
       sound_clear(TRUE);
    }
    }
  else if (tFuelPercent < FUEL_WARNING_ON_LEVEL && waterTimer1 < 5000) 
  {
    waterTimer1+=100; 
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[preheating]);
    set_warning_sound(0xFFFF, 1000, 1000, 3);
    if (BETWEEN(waterTimer1, 1000, 2000) || BETWEEN(waterTimer1, 3000, 4000)){
       sound_clear(TRUE);
    }
    }                               
  else if (flagInput.tailLamp && waterTimer3 < 5000)
  {
    waterTimer3+=100;
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[talkuk]);
    set_warning_sound(0xFFFF, 1000, 1000, 3);
    if (BETWEEN(waterTimer3, 500, 5100)){
       sound_clear(TRUE);
    }
  }

  else if (flagInput.oilPressure == TRUE && waterTimer4 < 5000 && engine_speed > 500)
  {
    waterTimer4 += 100;
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[engineOil]);
    set_warning_sound(0xFFFF, 1000, 1000, 3);
    if (BETWEEN(waterTimer4, 1000, 2000) || BETWEEN(waterTimer4, 3000, 4000))
    {
       sound_clear(TRUE);
    }
  }
  
  else if (flagInput.charge && waterTimer5 < 5000 && engine_speed > 500)              
  {
        waterTimer5+=100;
        YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[chunjon]);
        set_warning_sound(0xFFFF, 1000, 1000, 3);
       if (BETWEEN(waterTimer5, 1000, 2000)|| BETWEEN(waterTimer5, 3000, 4000)){
        sound_clear(TRUE);
    }
   }
    else if (flagInput.diode && waterTimer6 < 10000 )              
  {
        waterTimer6+=100;
        YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[kitaanjon]);
        set_warning_sound(0xFFFF, 1000, 1000, 3);
       if (BETWEEN(waterTimer6, 1000, 2000) || BETWEEN(waterTimer6, 3000, 4000) || BETWEEN(waterTimer6, 5000, 6000)  || BETWEEN(waterTimer6, 7000, 8000)  || BETWEEN(waterTimer6, 9000, 10300)){
        sound_clear(TRUE);
    }
   } 
      else if (flagInput.dfp && waterTimer7 < 5000 )              
  {
        waterTimer7+=100;
        YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[dpf_1]);
        set_warning_sound(0xFFFF, 1000, 1000, 3);
       if (BETWEEN(waterTimer7, 1000, 2000) || BETWEEN(waterTimer7, 3000, 4000)){
        sound_clear(TRUE);
    }
   }
      else if (flagInput.grain_4 && waterTimer8 < 5000){
    waterTimer8 += 100;  
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[kukmul]);
    set_warning_sound(0xFFFF, 1000, 1000, 3);
    if (BETWEEN(waterTimer8, 1000, 2000) || BETWEEN(waterTimer8, 3000, 5100)){
        sound_clear(TRUE);
    }
    }
       else if (flagInput.chippechul && waterTimer9 < 5000){
    waterTimer9 += 100;  
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[kukmulpechul]);
    }
       else if (flagInput.mulpulli && waterTimer11 < 5000 && engine_speed > 500){
    waterTimer11 +=100;
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[mulpulli]);
       set_warning_sound(0xFFFF, 1000, 1000, 3);
       if (BETWEEN(waterTimer11, 1000, 5100)){
        sound_clear(TRUE);
       }
    }      
  
   /*
    else if(flagWarning.index == W_ENGINE_COOLING_TEMPERATURE)
  {
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[yusu]);      // tseveen 20250522   added yusu
  }
    else if(flagWarning.index == W_CHARGE)
  {
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[chunjon]);      // tseveen 20250529   added chunjon
  } 
    else if(flagWarning.index == W_ENGINE_OIL_PRESSURE)
  {
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[engineOil]);      // tseveen 20250529   added engine_oil
  } 
    else if(flagWarning.index == W_CHORI_BIN)
  {
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[talkuk]);      // tseveen 20250529   added choiri
  }
    else if(flagWarning.index == W_TALKUK_BIN)
  {
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[talkuk]);      // tseveen 20250529   added talkuk
  }  
    else if(flagWarning.index == BON_2)            // CHANGED 20250611 W_2_SENSOR
  {
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[bon_2]);      // tseveen 20250529   added 2bon
  }
    else if(flagWarning.index == W_GUGMUL_MANYANG)
  {
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[kukmul]);      // tseveen 20250529   added kukmul
  } */

  if(flag.engineStarted == FALSE)
  {
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[clock1]);
    clockActionNumber = 0;
    timeClockAction = 0;
  }
  else
  {
    timeClockAction += 100;
    if(timeClockAction >= CLOCK_ACTION_TIME)
    {
      timeClockAction = 0;
      clockActionNumber++;
      if(clockActionNumber >= CLOCK_ACTION_NUMBER)
        clockActionNumber = 0;
    }
    
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[clock1 + clockActionNumber]);
  }
  
  YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[clock_box]);
  YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[error_box]);
  
      // ----------------------------- chagowbox ----------------------------- 
  
  if(engine_speed < 2099)
  {
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[chuhenkimji]); 
  }
  if(engine_speed <= 2399 && engine_speed >= 2100){
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[chagowkimji]);
  }
  if(engine_speed <= 3000 && engine_speed >= 2400){
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[chagowgvgan]);
  }
  
  // ----------------------------- Top status lights based on digital input --------------------------
  if(flagInput.leftLamp)            {YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[turn_left]);}
  if(flagInput.rightLamp)           {YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[turn_right]);}
  if(flagInput.charge)              {YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[charge_lamp]);} 
  if(flagWarning.oilPressure)       {YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[oil_lamp]);}
    
  // ----------------------------- Draw Fuel ------------------------------
  if(isFuelLower == 0)
  {
    if(tFuelPercent < FUEL_RED_IMAGE_ON_LEVEL)
    {
      isFuelLower = 1;
      YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[fuel_red]);
    }
  }
  else
  {
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[fuel_red]);
    if(tFuelPercent > FUEL_RED_IMAGE_OFF_LEVEL)
    {
      isFuelLower = 0;      
    }
  }
  
  tFuelGage = (uint8_t)((float)tFuelPercent / 10.0) + 1;
  if(tFuelGage > NUMBER_OF_FUEL_IMAGES)
  {
    tFuelGage = NUMBER_OF_FUEL_IMAGES;
  }
  for(i = 0 ; i < tFuelGage ; i++)                                                                                    // the "tfuelGage" calculation is little bit modified
  {
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[fuelorange001+i]);
  }
  
  // ----------------------------- Draw RPM ------------------------------
  
  if(tEngineSpeed >= 3000)                                                    // 3000 to RPM
    Angle_Object = 198;  
  else if(tEngineSpeed >= 1000)                                               // 1000 to 3000 RPM
    Angle_Object = (uint16_t)(((float)(tEngineSpeed - 1000) * 0.09) + 19);    // 020 - 199 = 180/2000 = 0.09
  else                                                                        // 0 to 1000 RPM
    Angle_Object = (uint16_t)((float)tEngineSpeed * 0.019);                   // 001 - 019 = 19
  
  if((Angle_Object - Angle_Object_prev) == 0)
  {
    Angle_Object_prev = Angle_Object;
  }
  else if((Angle_Object - Angle_Object_prev) > 0)
  {
    // RPM increasing
    if((Angle_Object - Angle_Object_prev) > 7) //7
    {
      Angle_Object_prev += 7;
    }
    else
    {
      if((Angle_Object - Angle_Object_prev) > 2)
      {
        Angle_Object_prev = Angle_Object;
      }
    }
  }
  else
  {
    // RPM decreasing
    if((Angle_Object_prev - Angle_Object) > 7)
    {
      Angle_Object_prev -= 7;
    }
    else
    {
      if((Angle_Object_prev - Angle_Object) > 2)
      {
        Angle_Object_prev = Angle_Object;
      }
      //Angle_Object_prev = Angle_Object;
    }
  }
  if ( Angle_Object_prev >= 198 )
    Angle_Object_prev = 198;
  else if(Angle_Object_prev < 0)
    Angle_Object_prev = 0;
  
  YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_RPM_GT[Angle_Object_prev]);
  
  // ----------------------------- Draw Gokmul ------------------------------

  if(flagInput.grain_4)
  {
    grain_sensor_4_blink++;
    if(grain_sensor_4_blink < 5)
    {
      YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[gokmul004]);
      YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[gokmul003]);
      YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[gokmul002]);
      YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[gokmul001]);
    }
    else if(grain_sensor_4_blink >= 10) 
    {
      grain_sensor_4_blink = 0;
    }
  }
  else if(flagInput.grain_3)
  {    
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[gokmul003]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[gokmul002]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[gokmul001]);
  }
  else if(flagInput.grain_2)
  {
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[gokmul002]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[gokmul001]);
  }
  else if(flagInput.grain_1)
  {
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MAIN_GT[gokmul001]);
  }
  // ----------------------------- Draw Texts ------------------------------
  
  memset(hour_string, 0, 8);
  ftoa(engineHour, hour_string, 1);
  hour_string[7] = 0;
     
  YVC1_SetChar(Text_FC, hour_string);
  YVC1_SetFontAttr(imgCnt++,(const T_Y643_LYR_FONTATTR *)MAIN_GT[Text]); 
   
  return imgCnt;
}

/*------------------------------------- Warning pages -------------------------------------*/
/*
uint16_t DrawWarningCombineCheckMessage(uint16_t _imgCnt)
{
  uint16_t imgCnt = _imgCnt;
  char _string[5] = {'1','2','.','0',0};
  char _string1[5] = {'0','.','0','0',0};;
  float   f_voltage;
  uint16_t voltage;
        
//  YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_1_GT[warning_1_bg_001]); tseveen 20250522  sub 
//  YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_1_GT[warning_1_bg_002]); tseveen 20250522  sub 

  if((flagWarning.index >= W_AUGER_ROTATION_SENSOR) && (flagWarning.index <= W_ONETOUCH_UP_DOWN))
  {
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MODE000_GT[MODE000_TITLE1]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)MODE000_GT[MODE000_TITLE2]);
  }
  
  if(flagWarning.index == W_AUGER_ROTATION_SENSOR)
  {
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH9_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH9_sub_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH9_message_1]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage]);

    f_voltage = (float) AG_auger_potentiometer_value * 5.0 / 1023.0;
    voltage = (uint16_t) (f_voltage * 100.0);
    
    _string[0] = ((voltage%1000)/100) + 0x30;
    _string[1] = '.';
    _string[2] = ((voltage%100)/10) + 0x30;
    _string[3] = (voltage%10) + 0x30;
    _string[4] = 0;  

    YVC1_SetChar(Data1_value_FC, _string);
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data1_value]);
  }
  else if(flagWarning.index == W_LSA_MOTOR_POSITION_SENSOR)
  {
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH10_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH10_sub_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH10_message_1]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_percent]);
    
//    f_voltage = (float) LSA_multiturn_position * 5.0 / 1023.0;
    voltage = (uint16_t) (dataCAN350.LSA_lsa_motor_output_duty_ratio);
    
    _string[0] = 0;
    _string[1] = 0;
    _string[2] = 0;
    
    ftoa(voltage, _string, 0);
    
    _string[3] = 0;
    _string[4] = 0;  
    
    YVC1_SetChar(Data1_value_FC, _string);
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data1_value]);    
  }
  
  else if(flagWarning.index == W_TBS_SLOPE_SENSOR)
  {
    // TBS 경사 샌서 에러
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH1_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH1_sub_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH1_message_1]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage]);
    
    f_voltage = (float) IC_inclination * 5.0 / 1023.0;
    voltage = (uint16_t) (f_voltage * 100.0);
    
    _string[0] = ((voltage%1000)/100) + 0x30;
    _string[1] = '.';
    _string[2] = ((voltage%100)/10) + 0x30;
    _string[3] = (voltage%10) + 0x30;
    _string[4] = 0;  

    YVC1_SetChar(Data1_value_FC, _string);
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data1_value]);
  }
  else if(flagWarning.index == W_TBS_RIGHT_SENSOR)
  {
    // TBS 차고 좌특 센서 에러
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH3_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH3_sub_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH3_message_1]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage]);
    
    f_voltage = (float) IC_garage_right_sensor * 5.0 / 1023.0;
    voltage = (uint16_t) (f_voltage * 100.0);
    
    _string[0] = ((voltage%1000)/100) + 0x30;
    _string[1] = '.';
    _string[2] = ((voltage%100)/10) + 0x30;
    _string[3] = (voltage%10) + 0x30;
    _string[4] = 0;

    YVC1_SetChar(Data1_value_FC, _string);
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data1_value]);
  }
  else if(flagWarning.index == W_TBS_LEFT_SENSOR)
  {
    // TBS 차고 좌특 센서 에러 
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH2_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH2_sub_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH2_message_1]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage]);
    
    f_voltage = (float) IC_garage_left_sensor * 5.0 / 1023.0;
    voltage = (uint16_t) (f_voltage * 100.0);
    
    _string[0] = ((voltage%1000)/100) + 0x30;
    _string[1] = '.';
    _string[2] = ((voltage%100)/10) + 0x30;
    _string[3] = (voltage%10) + 0x30;
    _string[4] = 0;
    
    YVC1_SetChar(Data1_value_FC, _string);
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data1_value]);
    
  }
  else if(flagWarning.index == W_TBS_MANUAL_SWITCH)
  {
    // TBS 수동 스위치 에러
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH4_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH4_sub_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH4_message_1]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH4_message_2]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH4_message_3]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH4_message_4]);

    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 0, 0);
    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 50, 0);
    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 100, 0);
    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 150, 0);
    
    if(dataCAN310.IC_tbs_manual_down_sw == ON)
    {
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_on], 0, 0 , 0);
      YVC1_SetChar(Data1_value_FC, _string);
    }
    else{
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_off], 0, 0 , 0);
      YVC1_SetChar(Data1_value_FC, _string1);
    }
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data1_value]);
    
    if(dataCAN310.IC_tbs_manual_up_sw == ON){
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_on], 0, 50 , 0);
      YVC1_SetChar(Data2_value_FC, _string);
    }
    else{
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_off], 0, 50 , 0);
      YVC1_SetChar(Data2_value_FC, _string1);
    }
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data2_value]);

    if(dataCAN310.IC_tbs_manual_right_down_sw == ON){
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_on], 0, 100 , 0);
      YVC1_SetChar(Data3_value_FC, _string);
    }
    else{
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_off], 0, 100 , 0);
      YVC1_SetChar(Data3_value_FC, _string1);
    }
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data3_value]);
    
    if(dataCAN310.IC_tbs_manual_right_up_sw == ON){
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_on], 0, 150 , 0);
      YVC1_SetChar(Data4_value_FC, _string);
    }
    else{
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_off], 0, 150 , 0);
      YVC1_SetChar(Data4_value_FC, _string1);
    }
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data4_value]);    
  }
  else if(flagWarning.index == W_AUGER_MANAUL_SWITCH)
  {
    // 오거 수동 스위치 에러
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH5_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH5_sub_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH5_message_1]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH5_message_2]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH5_message_3]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH5_message_4]);

    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 0, 0);
    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 50, 0);
    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 100, 0);
    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 150, 0);

    if(dataCAN310.IC_auger_manual_right_sw){
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_on], 0, 0 , 0);
      YVC1_SetChar(Data1_value_FC, _string);
    }
    else{
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_off], 0, 0 , 0);
      YVC1_SetChar(Data1_value_FC, _string1);
    }
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data1_value]);
    
    if(dataCAN310.IC_auger_manual_left_sw){
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_on], 0, 50 , 0);
      YVC1_SetChar(Data2_value_FC, _string);
    }
    else{
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_off], 0, 50 , 0);
      YVC1_SetChar(Data2_value_FC, _string1);
    }
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data2_value]);
    
    if(dataCAN310.IC_auger_manual_up_sw){
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_on], 0, 100 , 0);
      YVC1_SetChar(Data3_value_FC, _string);
    }
    else{
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_off], 0, 100 , 0);
      YVC1_SetChar(Data3_value_FC, _string1);
    }
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data3_value]);
    
    if(dataCAN310.IC_auger_manual_down_sw){
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_on], 0, 150 , 0);
      YVC1_SetChar(Data4_value_FC, _string);
    }
    else{
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_off], 0, 150 , 0);
      YVC1_SetChar(Data4_value_FC, _string1);
    }
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data4_value]);
  }
  else if(flagWarning.index == W_AUGER_SETTING_SWITCH)
  {
    // 오거 설정 북귀 스위치 에러
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH6_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH6_sub_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH6_message_1]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH6_message_2]);
    
    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 0, 0);
    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 50, 0);
    
    if(dataCAN310.IC_auger_setting_sw){
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_on], 0, 0 , 0);
      YVC1_SetChar(Data1_value_FC, _string);
    }
    else{
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_off], 0, 0 , 0);
      YVC1_SetChar(Data1_value_FC, _string1);
    }
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data1_value]);

    if(dataCAN310.IC_auger_return_sw){
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_on], 0, 50 , 0);
      YVC1_SetChar(Data2_value_FC, _string);
    }
    else{
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_off], 0, 50 , 0);
      YVC1_SetChar(Data2_value_FC, _string1);
    }
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data2_value]);
  }
  else if(flagWarning.index == W_LSA_MH_SENSOR)
  {
    // LSA M/H 센서 에러
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH7_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH7_sub_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH7_message_1]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH7_message_2]);
    
    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 0, 0);
    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 50, 0);

    if(dataCAN310.IC_lsa_manual_rise_sw){
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_on], 0, 0 , 0);
      YVC1_SetChar(Data1_value_FC, _string);
    }
    else{
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_off], 0, 0 , 0);
      YVC1_SetChar(Data1_value_FC, _string1);
    }
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data1_value]);
    
    if(dataCAN310.IC_lsa_manual_descent_sw){
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_on], 0, 50 , 0);
      YVC1_SetChar(Data2_value_FC, _string);
    }
    else{
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_off], 0, 50 , 0);
      YVC1_SetChar(Data2_value_FC, _string1);
    }
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data2_value]);    
  }
  else if(flagWarning.index == W_LSA_MANUAL_SWITCH)
  {
    // LSA 수동 스위치 에러
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH8_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH8_sub_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH8_message_1]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH8_message_2]);
    
    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 0, 0);
    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 50, 0);
    
    if(dataCAN310.IC_lsa_manual_descent_sw){
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_on], 0, 0 , 0);
      YVC1_SetChar(Data1_value_FC, _string);
    }
    else{
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_off], 0, 0 , 0);
      YVC1_SetChar(Data1_value_FC, _string1);
    }
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data1_value]);
    
    if(dataCAN310.IC_lsa_manual_rise_sw){
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_on], 0, 50 , 0);
      YVC1_SetChar(Data2_value_FC, _string);
    }
    else{
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_off], 0, 50 , 0);
      YVC1_SetChar(Data2_value_FC, _string1);
    }
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data2_value]);
  }

  else if(flagWarning.index == W_YEACHE_LIFT_SENSOR)
  {
    // 예취 리프트 센서 에러
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH11_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH11_sub_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH11_message_1]);
    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 0, 0);
    
    f_voltage = (float) CC_lift_sensor_val * 5.0 / 1023.0;
    voltage = (uint16_t) (f_voltage * 100.0);
    
    _string[0] = ((voltage%1000)/100) + 0x30;
    _string[1] = '.';
    _string[2] = ((voltage%100)/10) + 0x30;
    _string[3] = (voltage%10) + 0x30;
    _string[4] = 0;  

    YVC1_SetChar(Data1_value_FC, _string);
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data1_value]);    
  }
  else if(flagWarning.index == W_PREVIEW_SENSOR)
  {
    // 예고 센서 에러
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH12_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH12_sub_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH12_message_1]);
    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 0, 0);
  
    f_voltage = (float) CC_power_clutch_sensor * 5 / 1023.0;
    voltage = (uint16_t) (f_voltage * 100);
    
    _string[0] = ((voltage%1000)/100) + 0x30;
    _string[1] = '.';
    _string[2] = ((voltage%100)/10) + 0x30;
    _string[3] = (voltage%10) + 0x30;
    _string[4] = 0;  
    YVC1_SetChar(Data1_value_FC, _string);
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data1_value]);

  }
  else if(flagWarning.index == W_YEACHE_MANAUL_SWITCH)
  {
    // 예취 수동 스위치 에러
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH13_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH13_sub_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH13_message_1]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH13_message_2]);

    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 0, 0);
    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 50, 0);
    
    if(dataCAN330.CC_harvesting_up_sw){
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_on], 0, 0 , 0);
      YVC1_SetChar(Data1_value_FC, _string);
    }
    else{
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_off], 0, 0 , 0);
      YVC1_SetChar(Data1_value_FC, _string1);
    }
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data1_value]);
    
    if(dataCAN330.CC_harvesting_down_sw){
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_on], 0, 50 , 0);
      YVC1_SetChar(Data2_value_FC, _string);
    }
    else{
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_off], 0, 50 , 0);
      YVC1_SetChar(Data2_value_FC, _string1);
    }
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data2_value]);

  }
  else if(flagWarning.index == W_TALKUK_CLUTCH_CONNECTION_BLOCK)
  {
    // 탈곡클러치 연결 차단 에러
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH14_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH14_sub_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH14_message_1]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH14_message_2]);

    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 0, 0);
    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 50, 0);

    if(dataCAN330.CC_threshing_clutch_blocking_sw == ON)
    {
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_on], 0, 0 , 0);
      YVC1_SetChar(Data1_value_FC, _string);
    }
    else
    {
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_off], 0, 0 , 0);
      YVC1_SetChar(Data1_value_FC, _string1);
    }
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data1_value]);
    
    if(dataCAN330.CC_threshing_clutch_connection_sw == ON)
    {
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_on], 0, 50 , 0);
      YVC1_SetChar(Data2_value_FC, _string);
    }
    else
    {
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_off], 0, 50 , 0);
      YVC1_SetChar(Data2_value_FC, _string1);
    }
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data2_value]);
  }
  else if(flagWarning.index == W_TALKUK_CLUTCH_CONNECTION_BLOCK_LSA_MOTOR)
  {
    // 예취클러치 연결 차단 에러 --> LSA모터
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH15_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH15_sub_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH15_message_1]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH15_message_2]);

    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 0, 0);
    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 50, 0);

    if(dataCAN330.CC_yeache_clutch_blocking_sw  == ON)
    {
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_on], 0, 0 , 0);
      YVC1_SetChar(Data1_value_FC, _string);
    }
    else{
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_off], 0, 0 , 0);
      YVC1_SetChar(Data1_value_FC, _string1);
    }
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data1_value]);
    
    if(dataCAN330.CC_yeache_clutch_connection_sw == ON){
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_on], 0, 50 , 0);
      YVC1_SetChar(Data2_value_FC, _string);
    }
    else{
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_off], 0, 50 , 0);
      YVC1_SetChar(Data2_value_FC, _string1);
    }
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data2_value]);

  }
  else if(flagWarning.index == W_ONETOUCH_UP_DOWN)
  {
    // 원터치 상승/하강
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH16_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH16_sub_title]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH16_message_1]);
    YVC1_SetSprtAttr(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[MH16_message_2]);

    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 0, 0);
    YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_voltage], 0, 50, 0);
    
    if(dataCAN330.CC_one_touch_down){
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_on], 0, 0 , 0);
      YVC1_SetChar(Data1_value_FC, _string);
    }
    else{
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_off], 0, 0 , 0);
      YVC1_SetChar(Data1_value_FC, _string1);
    }
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data1_value]);
    
    if(dataCAN330.CC_one_touch_up){
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_on], 0, 50 , 0);
      YVC1_SetChar(Data2_value_FC, _string);
    }
    else{
      YVC1_SetSprtAttrWithParam(imgCnt++, (const T_Y643_LYR_SPRTATTR *)WARNING_3_GT[unit_off], 0, 50 , 0);
      YVC1_SetChar(Data2_value_FC, _string1);
    }
    YVC1_SetFontAttr(imgCnt++, (const T_Y643_LYR_FONTATTR *)WARNING_3_GT[Data2_value]);
  }
  
  return imgCnt;
}
*/

uint16_t DrawWarningCombineCheck(uint16_t _imgCnt)
{
  uint16_t imgCnt = _imgCnt;

  return imgCnt;
}

void lcd_process()
{
  static uint16_t timerLogoPage = 0;
  uint16_t imgCnt = 0;
//  static uint8_t midPrev = 0;
//  static uint16_t timerMid = 0;
//  static uint8_t prevTaillamp = 255;
  /*
  if(flagTimer.hundredMs == TRUE)
  {
    sound_clear(TRUE);
    YVC1_VinBcdDisp(0, 0);  

    if(Vsync_Filp_Check() == TRUE)
    {
      if(currentPageState == LOGO_PAGE)
      {
        imgCnt = draw_logo_page(imgCnt);
      }
      else
      {
        imgCnt = draw_main_page(imgCnt);
      }

      YVC1_SetHostContLyrWithFlip(YVC_LYR_ADDR_CPU, imgCnt);
    }
  }
  */
/*  
  if (flagInput.miding)
  {
    if(!midPrev)
    {
      timerMid += 2;
      if(timerMid >= 1000)
      {
        timerMid = 0;
        update_timer(lcdBrigthnessNight);
      }
      midPrev = flagInput.miding;
    }
  }
  else
  {
    if(midPrev)
    {
      timerMid += 2;
      if(timerMid >= 1000)
      {
        timerMid = 0;
        update_timer(lcdBrigthnessDay);
      }
      midPrev = flagInput.miding;
    }
  }
*/
/*  
  if(flagTimer.hundredMs == TRUE)
  {
    if(flagInput.miding == TRUE)
    {
      update_timer(lcdBrigthnessNight);
    }
    else if(flagInput.miding == FALSE)
    {
      update_timer(lcdBrigthnessDay);
    }
//    prevTaillamp = flagInput.miding;
  } */
  
  


  
  if(currentPageState == LOGO_PAGE)
  {
    if(flagTimer.tenMs == TRUE)
    {
      timerLogoPage += 10;
      if(timerLogoPage >= 50)
      {
        timerLogoPage = 0;
        YVC1_VinBcdDisp(0, 0);  

        if(Vsync_Filp_Check() == TRUE)
        {
          imgCnt = draw_logo_page(imgCnt);
          YVC1_SetHostContLyrWithFlip(YVC_LYR_ADDR_CPU, imgCnt);
        }
      }
    }
  }
  else
  {
    if(flagTimer.hundredMs == TRUE)
    {
      sound_clear(TRUE);
      YVC1_VinBcdDisp(0, 0);  

      if(Vsync_Filp_Check() == TRUE)
      {
        imgCnt = draw_main_page(imgCnt);
        YVC1_SetHostContLyrWithFlip(YVC_LYR_ADDR_CPU, imgCnt);
      }
    }
  }
}

/*
void lcd_process()
{
  static uint16_t time_logo = 0;
  uint16_t imgCnt = 0;
  
  if(flagTimer.fiftyMs == TRUE)
  {
    time_logo += 10;
    sound_clear(TRUE);
    if(((currentPageState == LOGO_PAGE) && (time_logo >= 50 )) || (time_logo >= 100))
    {
      time_logo = 0;
      YVC1_VinBcdDisp(0, 0);
      if(Vsync_Filp_Check() == TRUE)
      {
        if(currentPageState != LOGO_PAGE)
        {
          imgCnt = draw_main_page(imgCnt);
        }
        else
        {
          imgCnt = draw_logo_page(imgCnt);
        }
        YVC1_SetHostContLyrWithFlip(YVC_LYR_ADDR_CPU,imgCnt);
      }
    }
  }
}*/
/*
void lcd_process()
{
  uint16_t imgCnt = 0;
  
  if(flagTimer.hundredMs == TRUE)
  {
    YVC1_VinBcdDisp(0, 0);
    if(Vsync_Filp_Check() == TRUE)
    {
      if(currentPageState != LOGO_PAGE)
      {
        imgCnt = draw_main_page(imgCnt);
      }
      else
      {
        imgCnt = draw_logo_page(imgCnt);
      }
      YVC1_SetHostContLyrWithFlip(YVC_LYR_ADDR_CPU,imgCnt);
    }
  }
}
*/


/*----------------------------------------------- Memory -----------------------------------------------*/
#define NUMBER_OF_BUFFER_FUEL           100
uint8_t tFuelPercentBuffer[NUMBER_OF_BUFFER_FUEL];
float tFuelPercentTotal;
uint8_t tFuelPercentBufferCounter = 0;

#define NUMBER_OF_BUFFER_ACCEL          100
float tAccelBuffer[NUMBER_OF_BUFFER_ACCEL];
uint8_t tAccelBufferCounter = 0;
float tAccelTotal;
/*----------------------------------------------- Algorithm -----------------------------------------------*/
void analog_sensors()
{
  static uint8_t firstTime = TRUE;
  static float ADC_FUEL;
  static float ADC_BATTERY;
  static float ADC_ACCELERATOR;
  //static float ADC_TEMP;
  static float ADC_CPU_TEMP;

  uint8_t i;
  
  updateLastAverageADC();
  
  ADC_FUEL              = getAverageADCValue(0);
  ADC_BATTERY           = getAverageADCValue(1);
  //ADC_TEMP      = getAverageADCValue(2);
  ADC_ACCELERATOR       = getAverageADCValue(3);
  ADC_CPU_TEMP          = getAverageADCValue(4);
    
  tAccelBufferCounter++;
  if(tAccelBufferCounter >= NUMBER_OF_BUFFER_ACCEL)
  {
    tAccelBufferCounter = 0;
  }
  tAccelBuffer[tAccelBufferCounter] = ADC_ACCELERATOR;
  
  tAccelTotal = 0;
  for(i = 0; i < NUMBER_OF_BUFFER_ACCEL; i++)
  {
    tAccelTotal += tAccelBuffer[i];
  }
  tAccelTotal /= NUMBER_OF_BUFFER_ACCEL;
  
  if(flagTimer.hundredMs == TRUE)                                                  // every 100ms ADC data should be updated
  {
    if(ADC_FUEL < FUEL_ADC_PERCENTAGES[NUMBER_OF_STEP_IN_FUEL - 1].raw_data)
    {
      ADC_FUEL = FUEL_ADC_PERCENTAGES[NUMBER_OF_STEP_IN_FUEL - 1].raw_data;
    }
    else if(ADC_FUEL > FUEL_ADC_PERCENTAGES[0].raw_data)
    {
      ADC_FUEL = FUEL_ADC_PERCENTAGES[0].raw_data;
    }
      
    tFuelPercentBufferCounter++;
    if(tFuelPercentBufferCounter >= NUMBER_OF_BUFFER_FUEL)
      tFuelPercentBufferCounter = 0;
    
    for(i = 0; i < NUMBER_OF_STEP_IN_FUEL; i++)
    {
      if(ADC_FUEL >= FUEL_ADC_PERCENTAGES[i].raw_data)
      {
        if(i == 0)
        {
          tFuelPercentBuffer[tFuelPercentBufferCounter] = 0;                       // 0 percentage
        }
        else 
        {
          tFuelPercentBuffer[tFuelPercentBufferCounter] = (uint8_t)(((float)FUEL_ADC_PERCENTAGES[i - 1].raw_data - (float)ADC_FUEL) * 
                                   (FUEL_ADC_PERCENTAGES[i].percentage - FUEL_ADC_PERCENTAGES[i - 1].percentage) / 
                                   ((float)FUEL_ADC_PERCENTAGES[i - 1].raw_data - (float)FUEL_ADC_PERCENTAGES[i].raw_data));
          tFuelPercentBuffer[tFuelPercentBufferCounter] += FUEL_ADC_PERCENTAGES[i - 1].percentage;
          break;
        }
      }
    }
    if(i == NUMBER_OF_STEP_IN_FUEL)
    {
      tFuelPercentBuffer[tFuelPercentBufferCounter] = 100;                         // 100 percentage
    }
    
    tFuelPercentTotal = 0;
    for(i = 0; i < NUMBER_OF_BUFFER_FUEL; i++)
    {
      tFuelPercentTotal += tFuelPercentBuffer[i];
    }
      
    if(firstTime == TRUE)
    {
      tFuelPercent = tFuelPercentBuffer[tFuelPercentBufferCounter];
      firstTime = FALSE;
    }
    else
    {
      tFuelPercent = (uint8_t)(tFuelPercentTotal / (float)NUMBER_OF_BUFFER_FUEL);  
    }
    
    if(tFuelPercent > 100)
      tFuelPercent = 100;
    
    tPowerVoltage = (ADC_BATTERY / 4095.0) * 3.3 * 5.72;
    
    tFuelVoltage = (ADC_FUEL / 4095.0) * 3.3;
    tTemperature = ((((ADC_CPU_TEMP / 4095.0) * 3.3) - 0.76) / 0.0025) + 19.0 + 0.5;
  }
}

void digital_sensors()
{
  read_inputs();
//  check_buttons(); tseveen 20250421
}

void sensor_process()
{
  static uint16_t timerEngineOn = 0;
  static uint16_t timerEngineOff= 0;
  static uint8_t prevTaillamp = 0;

  if(flagTimer.hundredMs == TRUE)
  {
     if(flagInput.miding == TRUE)
    {
      update_timer(lcdBrigthnessNight);
    }
    else if(flagInput.miding == FALSE)
    {
      prevTaillamp += 10;
      if(prevTaillamp == 60){
      prevTaillamp = 0;
      update_timer(lcdBrigthnessDay);
      }
    }
//    prevTaillamp = flagInput.tailLamp;
  }
  
//  if(flagTimer.hundredMs == TRUE)
//  {
//    update_timer(900);
//  }
  
  tEngineSpeed = engine_speed;
  if(tEngineSpeed >= 500.0)
  {
    timerEngineOn += 2;
    if(timerEngineOn >= 1000)
    {
      timerEngineOff = 0;
      timerEngineOn = 1000;
      flag.engineStarted = TRUE;
    }
  }
  else
  {
    timerEngineOff += 2;
    if(timerEngineOff >= 1000)
    {
      timerEngineOn = 0;
      timerEngineOff = 1000;
      flag.engineStarted = FALSE;
    }
  }

  flagOutput.lamp_1 = flagInput.grain_1;
  flagOutput.lamp_2 = flagInput.grain_2;
  flagOutput.lamp_3 = flagInput.grain_3;
  flagOutput.lamp_4 = flagInput.grain_4;
}

void update_hours()
{
  if(flag.engineStarted == TRUE)
  {
    localEngineHourTimer++;
    localJobHourTimer++;
  }
}

void time_process()
{  
  if(localEngineHourTimer >= 180000)                                     // 3 minute
  {
    engineHour = engineHour + 0.05;
    check_setting_data(TRUE, CONFIGURE_ENGINE_HOUR_MSB, (uint16_t)((uint32_t)(engineHour * 100) >> 16));
    check_setting_data(TRUE, CONFIGURE_ENGINE_HOUR_LSB, (uint16_t)((uint32_t)(engineHour * 100)));
          
    engineOilHour = engineOilHour + 0.05;
    check_setting_data(TRUE, CONFIGURE_ENGINE_OIL_HOUR_MSB, (uint16_t)((uint32_t)(engineOilHour * 100) >> 16));
    check_setting_data(TRUE, CONFIGURE_ENGINE_OIL_HOUR_LSB, (uint16_t)((uint32_t)(engineOilHour * 100)));
    
    missionOilHour = missionOilHour + 0.05;
    check_setting_data(TRUE, CONFIGURE_MISSION_OIL_HOUR_MSB, (uint16_t)((uint32_t)(missionOilHour * 100) >> 16));
    check_setting_data(TRUE, CONFIGURE_MISSION_OIL_HOUR_LSB, (uint16_t)((uint32_t)(missionOilHour * 100)));
    
    localEngineHourTimer = 0;
  }
  
  if(localJobHourTimer >= 180000)
  {
    jobHour = jobHour + 0.05;
    check_setting_data(TRUE, CONFIGURE_JOB_HOUR_MSB, (uint16_t)((uint32_t)(jobHour * 100) >> 16));
    check_setting_data(TRUE, CONFIGURE_JOB_HOUR_LSB, (uint16_t)((uint32_t)(jobHour * 100)));

    localJobHourTimer = 0;
  }
}
/*
uint8_t warning_flag_checker()
{
  uint8_t wIndex;
  uint8_t checkRPM = FALSE;
    
  //////////////////////////////////////////////////////////////////////////////
  uint8_t warning_flags_array[TOTAL_NUMBER_OF_WARNINGS] = {
    flagWarning.fuel,                                                           //1  W_FUEL_EMPTY
    flagWarning.engineOilExchange,                                              //2  W_ENGINE_OIL_EXCHANGE
    flagWarning.missionOilExchange,                                             //3  W_MISSION_OIL_EXCHANGE
    flagWarning.battery,                                                        //4  W_BATTERY
    
    flagWarning.charge,                                                         //5  W_ENGINE_STOP_SWITCH
    flagWarning.charge,                                                         //39 W_CHARGE
    flagWarning.oilPressure,                                                    //40 W_ENGINE_OIL_PRESSURE
    flagInput.waterTemperature,                                                 //41 W_ENGINE_COOLING_TEMPERATURE   
    flagWarning.talkukBin,                                                      //43 W_TALKUK_BIN
    flagWarning.sensor2,                                                        //45 W_2_SENSOR
    flagInput.grain_4,                                                          //47 W_GUGMUL_MANYANG
  };

  for(wIndex = 0; wIndex < TOTAL_NUMBER_OF_WARNINGS; wIndex++)
  {
    if(warning_flags_array[wIndex] != 0)
    {
      warnings[wIndex].timerWarning += 100;
      if(warnings[wIndex].timerWarning >= 1000)
      {
        warnings[wIndex].timerWarning = 1000;
        warnings[wIndex].flag = W_FLAG_ACTIVE;
      }
    }
    else
    {
      warnings[wIndex].timerWarning = 0;
      warnings[wIndex].flag = W_FLAG_PASSIVE;
    }
  }
  
  // for loop
  for(wIndex = 0; wIndex < TOTAL_NUMBER_OF_WARNINGS; wIndex++)
  {
    if(warnings[wIndex].checkRPM == TRUE)
    {
      if(flag.engineStarted == TRUE)
      {
        checkRPM = TRUE;
      }
      else
      {
        checkRPM = FALSE;
      }
    }
    else
    {
      checkRPM = TRUE;
    }
        
    if((warnings[wIndex].flag == FALSE) && (warnings[wIndex].level != W_LEVEL_ON_TOP))
    {
      warnings[wIndex].state = W_STATE_NO_ERROR;
      warnings[wIndex].page = W_NO_PAGE;
    }
       
    if(((warnings[wIndex].flag == W_FLAG_ACTIVE) && (checkRPM == TRUE) &&
       ((warnings[wIndex].state == W_STATE_NO_ERROR) || (warnings[wIndex].state == W_STATE_ACTIVE)))    // Error is active and error is NOT passive
       ||
       ((warnings[wIndex].state == W_STATE_ACTIVE) && (warnings[wIndex].level == W_LEVEL_ON_TOP)))      // There is NO active error and it should be displayed always ON top
    {
      if(warnings[wIndex].state == W_STATE_NO_ERROR)
      {
        warnings[wIndex].page = W_PAGE_1;
        warnings[wIndex].state = W_STATE_ACTIVE;
      }
      
      set_warning_sound(warnings[wIndex].soundPeriodNumber, warnings[wIndex].soundPeriod, 
                        warnings[wIndex].soundOnDuration, warnings[wIndex].soundOffDuration);
             
      return wIndex;
    }
  }
  
  return TOTAL_NUMBER_OF_WARNINGS;
} */

void warning_process()
{
  static uint16_t timerWarningCharge = 0;
  static uint16_t timerToCheckWarning = 0;
  static uint16_t timerBatteryOn = 0;
  static uint16_t timerBatteryOff = 0;

  if(flagTimer.hundredMs == FALSE)
  {
    return;
  }
  
  if(timerToCheckWarning < WARNING_START_TIME)
  {
    timerToCheckWarning += 100;
    flagWarning.detected = FALSE;
    flagWarning.index = TOTAL_NUMBER_OF_WARNINGS;
    return;
  }
  
  if((flagInput.charge == ON) && (flag.engineStarted == TRUE))
  {
    timerWarningCharge += 100;
    if(timerWarningCharge >= 1000)
    {
      timerWarningCharge = 1000;
      flagWarning.charge = TRUE;
    }
  }
  else
  {
    flagWarning.charge = FALSE;
    timerWarningCharge = 0;
  }
  
  
  // Check warnings
  if(flagWarning.fuel == FALSE)
  {
    if(tFuelPercent < FUEL_WARNING_ON_LEVEL)
    { 
      flagWarning.fuel = TRUE;
    }
  }
  else                                          // Middle of the warning
  {
    if(tFuelPercent > FUEL_WARNING_OFF_LEVEL)
    {
      flagWarning.fuel = FALSE; 
    }
  }
  
  if(numberOfEngineOilExchange == 1)
  {
    if(engineOilHour >= ENGINE_OIL_HOUR_FIRST_TIME)
    { 
      flagWarning.engineOilExchange = TRUE;
    }
    else
    {
      flagWarning.engineOilExchange = FALSE;
    }
  }
  else
  {
    if(engineOilHour >= ENGINE_OIL_HOUR)
    {
      flagWarning.engineOilExchange = TRUE;
    }
    else
    {
      flagWarning.engineOilExchange = FALSE;
    }
  }
  
  if(numberOfMissionOilExchange == 1)
  {
    if(missionOilHour >= MISSION_OIL_HOUR_FIRST_TIME)
    {
      flagWarning.missionOilExchange = TRUE;
    }
    else
    {
      flagWarning.missionOilExchange = FALSE;
    }
  }
  else
  {
    if(missionOilHour >= MISSION_OIL_HOUR)
    {
      flagWarning.missionOilExchange = TRUE;
    }
    else
    {
      flagWarning.missionOilExchange = FALSE;
    }
  }
  
  if((tPowerVoltage < 10.3) && (flag.engineStarted == FALSE) && (flagWarning.battery == FALSE))                   // 10.5
  {
    timerBatteryOff = 0;
    timerBatteryOn += 100;
    if(timerBatteryOn >= 1000)
    {
      timerBatteryOn = 1000;
      flagWarning.battery = TRUE;      
    }
  }
  else
  {
    timerBatteryOn = 0;
    if(flagWarning.battery == TRUE)    
    {      
      if(tPowerVoltage > 11)    
      {
        timerBatteryOff += 100;
        if(timerBatteryOff >= 1000)
        {
          timerBatteryOff = 1000;
          flagWarning.battery = FALSE;
        }
      }
    }
    else
    {
      timerBatteryOff = 0;
    }
  }
  
//  flagWarning.index = warning_flag_checker(); //20250722
  if(flagWarning.index >= TOTAL_NUMBER_OF_WARNINGS)
  {
    sound_clear(FALSE);
    flagWarning.detected = FALSE;
  }
  else
  {
    flagWarning.detected = TRUE;
  }
}

uint8_t control_init()
{
  localEngineHourTimer = 0;
  localJobHourTimer = 0;
  flagTimer.data = 0;
  flagWarning.data[0] = 0;
  flagWarning.data[1] = 0;
  
  sound_clear(TRUE);
  memory_update();
    
  ygb643_tw9990_initialize();

  watchdog_enable();
  
  return TRUE;
}

void control_process()
{
  digital_sensors();
  
  analog_sensors();
  
  can_receive_process();
  
  sensor_process();
  warning_process();
  time_process();
      
  rpm_process();
  
  lcd_process();
  sound_process();
  
  write_outputs();
}
/*----------------------------------------------- Algorithm -----------------------------------------------*/

void ygv643_init()
{
  GPIO_InitTypeDef GPIO_InitStructure = { 0 };
  
  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOE_CLK_ENABLE();
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();

  HAL_GPIO_WritePin(YGV643_CS_GPIO_Port, YGV643_CS_Pin, GPIO_PIN_RESET);
  HAL_GPIO_WritePin(YGV643_RESET_GPIO_Port, YGV643_RESET_Pin, GPIO_PIN_RESET);
  
  GPIO_InitStructure.Pin = YGV643_CS_Pin;
  GPIO_InitStructure.Mode =  GPIO_MODE_OUTPUT_PP;
  GPIO_InitStructure.Pull = GPIO_NOPULL;
  GPIO_InitStructure.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(YGV643_CS_GPIO_Port, &GPIO_InitStructure);
  
  GPIO_InitStructure.Pin = YGV643_RESET_Pin;
  GPIO_InitStructure.Mode =  GPIO_MODE_OUTPUT_PP;
  GPIO_InitStructure.Pull = GPIO_NOPULL;
  GPIO_InitStructure.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(YGV643_RESET_GPIO_Port, &GPIO_InitStructure);
  
  GPIO_InitStructure.Pin = YGV643_INT_Pin;
  GPIO_InitStructure.Mode = GPIO_MODE_IT_RISING;
  GPIO_InitStructure.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(YGV643_INT_GPIO_Port, &GPIO_InitStructure);
  
  /* EXTI interrupt init*/
//  HAL_NVIC_SetPriority(EXTI15_10_IRQn, 4, 0);
//  HAL_NVIC_EnableIRQ(EXTI15_10_IRQn);   // TSEVEEN 20250819
}

void lcd_init()
{
  GPIO_InitTypeDef GPIO_InitStructure = { 0 };
  
  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOE_CLK_ENABLE();
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();

  HAL_GPIO_WritePin(LCD_POWER_GPIO_Port, LCD_POWER_Pin, GPIO_PIN_SET);
  HAL_GPIO_WritePin(LCD_RST_GPIO_Port, LCD_RST_Pin, GPIO_PIN_RESET);
  
  GPIO_InitStructure.Pin = LCD_POWER_Pin;
  GPIO_InitStructure.Mode =  GPIO_MODE_OUTPUT_PP;
  GPIO_InitStructure.Pull = GPIO_NOPULL;
  GPIO_InitStructure.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(LCD_POWER_GPIO_Port, &GPIO_InitStructure);
    
  GPIO_InitStructure.Pin = LCD_RST_Pin;
  GPIO_InitStructure.Mode =  GPIO_MODE_OUTPUT_PP;
  GPIO_InitStructure.Pull = GPIO_NOPULL;
  GPIO_InitStructure.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(LCD_RST_GPIO_Port, &GPIO_InitStructure);
    
  GPIO_InitStructure.Pin = LCD_ERR_Pin;
  GPIO_InitStructure.Mode = GPIO_MODE_INPUT;
  GPIO_InitStructure.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(LCD_ERR_GPIO_Port, &GPIO_InitStructure);
}

void eeprom_init(void)
{
  init_93c56();
}
