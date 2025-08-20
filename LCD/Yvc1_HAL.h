#ifndef __YVC1_HAL_H
#define __YVC1_HAL_H

#ifdef __cplusplus
extern "C" {
#endif

#include "main.h"

/* ---------------------------------------------------------- Defenitions ----------------------------------------------------------*/
#define YGV643_INT_Pin                  GPIO_PIN_11
#define YGV643_INT_GPIO_Port            GPIOB
#define YGV643_INT_EXTI_IRQn            EXTI15_10_IRQn

#define YGV643_CS_Pin                   GPIO_PIN_12   
#define YGV643_CS_GPIO_Port             GPIOB         

#define YGV643_RESET_Pin                GPIO_PIN_8
#define YGV643_RESET_GPIO_Port          GPIOD

#define LCD_POWER_Pin                   GPIO_PIN_11
#define LCD_POWER_GPIO_Port             GPIOE

#define LCD_RST_Pin                     GPIO_PIN_7
#define LCD_RST_GPIO_Port               GPIOE

#define LCD_ERR_Pin                     GPIO_PIN_8
#define LCD_ERR_GPIO_Port               GPIOE

#define YGV643_ENABLE_HIGH              HAL_GPIO_WritePin(YGV643_CS_GPIO_Port, YGV643_CS_Pin, GPIO_PIN_SET)
#define YGV643_ENABLE_LOW               HAL_GPIO_WritePin(YGV643_CS_GPIO_Port, YGV643_CS_Pin, GPIO_PIN_RESET)

#define YGV643_RESET_LOW                HAL_GPIO_WritePin(YGV643_RESET_GPIO_Port, YGV643_RESET_Pin, GPIO_PIN_SET)
#define YGV643_RESET_HIGH               HAL_GPIO_WritePin(YGV643_RESET_GPIO_Port, YGV643_RESET_Pin, GPIO_PIN_RESET)

#define LCD_RST_HIGH                    HAL_GPIO_WritePin(LCD_RST_GPIO_Port , LCD_RST_Pin, GPIO_PIN_RESET)
#define LCD_RST_LOW                     HAL_GPIO_WritePin(LCD_RST_GPIO_Port , LCD_RST_Pin, GPIO_PIN_SET)

#define LCD_MD070NF04_60ID_18A_AM       1
#define LCD_BRIGTHNESS_MAX              1000
#define LCD_BRIGTHNESS_MIN              1000                     // tseveen 20250624 changed 5 
#define LCD_BRIGTHNESS_STEP             500                     // tseveen 20250624 changed 5

#define FUEL_WARNING_ON_LEVEL           2                                      // percentage
#define FUEL_WARNING_OFF_LEVEL          7
#define FUEL_RED_IMAGE_ON_LEVEL         5                                      // percentage
#define FUEL_RED_IMAGE_OFF_LEVEL        10


#define SETTINGS_PAGE_SHIFT_TIMER       1000                                    // 1 second
#define LOGO_TIME                       300                                     // 0.3 seconds
#define WARNING_START_TIME              5000                                    // 5 seconds
#define NUMBER_OF_LOGO_IMAGE            34                                      // Number of images used for boot logo

  
//#define UREA_UPDATE_TIME                300                                     // 30 seconds
//#define COOLEANT_UPDATE_TIME            300                                     // 30 seconds
#define PCODE_SWITCHING_TIME            500                                     // 500 ms
#define CLOCK_ACTION_NUMBER             8                                       // Main display clock action images
#define CLOCK_ACTION_TIME               200                                     // Main display clock action time

/* ---------------------------------------------------------- Page states & variables ----------------------------------------------------------*/
typedef enum
{
  LOGO_PAGE = 0,
  MAIN_PAGE,
    
  WARNING_PAGE,
  
} pageState_t;

extern float jobHour;

extern uint8_t  tFuelPercent;
extern float    tPowerVoltage;

/*----------------------------------------------- Warning -----------------------------------------------*/

typedef enum 
{
  W_FUEL_EMPTY = 0,                                                             // 0 --> 1 pages
  W_ENGINE_OIL_EXCHANGE,
  W_MISSION_OIL_EXCHANGE,
  W_BATTERY,
  
  W_ENGINE_STOP_SWITCH,                                                         // Two pages
  W_CHARGE,
  W_ENGINE_OIL_PRESSURE,
  W_ENGINE_COOLING_TEMPERATURE,
  W_TALKUK_BIN,
  W_2_SENSOR,
  W_GUGMUL_MANYANG,
  
  TOTAL_NUMBER_OF_WARNINGS
} wIndex_t;

typedef enum
{
  W_FLAG_PASSIVE = 0,
  W_FLAG_ACTIVE
} wFlag_t;

typedef enum
{
  W_STATE_NO_ERROR = 0,
  W_STATE_ACTIVE,
  W_STATE_PASSIVE
} wState_t;

typedef enum
{
  W_LEVEL_PASSIVE = 0,                          // NO PAGE
  W_LEVEL_ACTIVE,                               // PAGE is shown when current error is active
  W_LEVEL_ON_TOP                                // PAGE is shown when error is occurred at least 1 time
} wLevel_t;

typedef enum
{
  W_NO_PAGE = 0,
  W_PAGE_1,
  W_PAGE_2
} wPage_t;

typedef union 
{
  uint32_t data[2];
  struct {
    uint32_t index                      : 8;
    
    uint32_t detected                   : 1;
    uint32_t engineOilExchange          : 1;
    uint32_t missionOilExchange         : 1;
    uint32_t fuel                       : 1;
    uint32_t airFilter                  : 1;                                    // PCODE = 1101
    uint32_t waterSeparator             : 1;                                    // PCODE = 1151
    uint32_t oilPressure                : 1;                                    // PCODE = 1192
    uint32_t can_timeout_warning_025    : 1;
    
    uint32_t can_timeout_warning_035    : 1;
    uint32_t can_timeout_warning_31x    : 1;
    uint32_t can_timeout_warning_33x    : 1;
    uint32_t can_timeout_warning_340    : 1;
    uint32_t can_timeout_warning_350    : 1;
    uint32_t can_timeout_warning_360    : 1;
    uint32_t can_timeout_warning_381    : 1;
    uint32_t can_timeout_warning_390    : 1;

    uint32_t MC_HST_chuhen_motor_error  : 1;
    uint32_t MC_HST_chuhyan_motor_error : 1;
    uint32_t MC_HST_chuhen_lever_error  : 1;
    uint32_t MC_HST_chuhyan_lever_error : 1;
  
    uint32_t charge                     : 1;
    uint32_t battery                    : 1;
    uint32_t nason2                     : 1;
    uint32_t nasonYangug                : 1;
    
    uint32_t nason2BlockSwitch          : 1;
    uint32_t talkukBin                  : 1;
    uint32_t sensor2                    : 1;
    uint32_t chipbechulBlockage         : 1;
    uint32_t bon_2                      : 1; // tseveen 20250610
    uint32_t pre_heating                : 1; // tseveen 20250613
    
    uint32_t res0                       : 2;
    
    uint32_t res1                       : 8;
    uint32_t res2                       : 8;
    uint32_t res3                       : 8;
  };
} flagWarning_t;
extern flagWarning_t flagWarning;
/*----------------------------------------------- Warning -----------------------------------------------*/

/*----------------------------------------------- Memory -----------------------------------------------*/
enum
{
  MEMORY_READ = 0,
  MEMORY_WRITE = 1
};
  
enum 
{
  CONFIGURE_JOB_HOUR_MSB = 0,
  CONFIGURE_JOB_HOUR_LSB,
  CONFIGURE_ENGINE_HOUR_MSB,
  CONFIGURE_ENGINE_HOUR_LSB,
  CONFIGURE_ENGINE_OIL_HOUR_MSB,
  CONFIGURE_ENGINE_OIL_HOUR_LSB,
  CONFIGURE_MISSION_OIL_HOUR_MSB,
  CONFIGURE_MISSION_OIL_HOUR_LSB,
  
  CONFIGURE_ENGINE_OIL_EXCHANGE_COUNTER,
  CONFIGURE_MISSION_OIL_EXCHANGE_COUNTER,
  CONFIGURE_LCD_BRIGHTNESS_NIGHT,
  CONFIGURE_LCD_BRIGHTNESS_DAY,

  NUMBER_OF_CONFIGURATION
};
   
#define ENGINE_OIL_HOUR_FIRST_TIME      30
#define ENGINE_OIL_HOUR                 100
#define MISSION_OIL_HOUR_FIRST_TIME     50
#define MISSION_OIL_HOUR                250

float getEngineHour();
uint16_t get_memory(uint8_t* data);
uint16_t set_memory(uint8_t* data);
void memory_update();
void default_memory_update();
/*----------------------------------------------- Memory -----------------------------------------------*/



/*----------------------------------------------- LCD -----------------------------------------------*/
void     YVC_Reset(void);
void     WaitMSec(uint16_t cnt);
uint8_t  YVC_BurstWritePort(uint8_t pPort_num, const uint8_t *uWr_data, uint16_t num);
uint8_t  YVC_BurstReadPort(uint8_t pPort_num,  uint8_t *uRd_data, uint16_t num);
uint8_t  YVC_WritePort(uint8_t pPort_num, uint8_t uWr_data);
uint8_t  YVC_ReadPort(uint8_t pPort_num);

void ygv643_initialize();


uint16_t display_function(uint16_t _imgCnt );
uint16_t draw_main_page(uint16_t _imgCnt);
uint16_t draw_main_settings(uint16_t _imgCnt);
uint16_t draw_sub_settings_1(uint16_t _imgCnt);
uint16_t draw_sub_settings_2(uint16_t _imgCnt);
uint16_t draw_sub_settings_3(uint16_t _imgCnt);
uint16_t draw_sub_settings_4(uint16_t _imgCnt);
uint16_t draw_sub_settings_5(uint16_t _imgCnt);

uint16_t DrawWarningCombineCheckModeTwo(uint16_t _imgCnt);
uint16_t DrawWarningCombineCheckMessage(uint16_t _imgCnt);
/*----------------------------------------------- LCD -----------------------------------------------*/

/*----------------------------------------------- Algorithm -----------------------------------------------*/

#define SETUP_MODE_NONE                 0
#define SETUP_MODE_ONE                  1
#define SETUP_MODE_TWO                  2

#define SETUP_READ                      0x55
#define SETUP_WRITE                     0xAA
  
#define VAL_10BIT_TO_VOLTAGE_5V         0.004882

#define VAC_FUEL_GAP                    40

#define VAC_TEMP_H                      2234
#define VAC_TEMP_MIDDL_UP               2462
#define VAC_TEMP_MIDDL                  2610
#define VAC_TEMP_MIDDL_DN               2800
#define VAC_TEMP_L                      3000
#define VAC_TEMP_GAP                    20

#define VAC_TEMP_9                      VAC_TEMP_H              + ((VAC_TEMP_MIDDL_UP-VAC_TEMP_H)/3)
#define VAC_TEMP_8                      VAC_TEMP_MIDDL_UP       - ((VAC_TEMP_MIDDL_UP-VAC_TEMP_H)/3)

#define VAC_TEMP_7                      VAC_TEMP_MIDDL_UP       + ((VAC_TEMP_MIDDL-VAC_TEMP_MIDDL_UP)/3)
#define VAC_TEMP_6                      VAC_TEMP_MIDDL          - ((VAC_TEMP_MIDDL-VAC_TEMP_MIDDL_UP)/3)

#define VAC_TEMP_5                      VAC_TEMP_MIDDL          + ((VAC_TEMP_MIDDL_DN-VAC_TEMP_MIDDL)/3)
#define VAC_TEMP_4                      VAC_TEMP_MIDDL_DN       - ((VAC_TEMP_MIDDL_DN-VAC_TEMP_MIDDL)/3)

#define VAC_TEMP_3                      VAC_TEMP_MIDDL_DN       + ((VAC_TEMP_L-VAC_TEMP_MIDDL_DN)/3)
#define VAC_TEMP_2                      VAC_TEMP_L              - ((VAC_TEMP_L-VAC_TEMP_MIDDL_DN)/3)
  
  
//------------------ Global variables of corresponding ADC inputs -------------------------------------------
typedef union
{
  uint32_t data;
  struct {
    uint32_t sound                      : 1;
    uint32_t alarm                      : 1;
    uint32_t engineStarted              : 1;
    uint32_t isBrigthnessSetting        : 1;
    
    uint32_t res                        : 28;
  };
} flag_t;

typedef struct  {
  uint16_t minValue;
  uint16_t maxValue;
  uint16_t defaultValue;
  uint16_t *value;
} nvData_t;

uint8_t control_init();
void control_process();

extern uint16_t timerKuRPMDelay;
/*----------------------------------------------- Algorithm -----------------------------------------------*/

/*----------------------------------------------- Hardware -----------------------------------------------*/
void eeprom_init(void);
void ygv643_init();
void lcd_init();
void update_hours();
/*----------------------------------------------- Hardware -----------------------------------------------*/

#ifdef __cplusplus
}
#endif

#endif /* __YVC1_HAL_H */