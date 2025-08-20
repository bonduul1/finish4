#include "can.h"
#include "input.h"
#include "Yvc1_HAL.h"
#include "RPM.h"

/* --------------------------------------------------------- STM32 CAN variables ---------------------------------------------------*/
CAN_HandleTypeDef       hcan1;

/* --------------------------------------------------------- CAN variables ---------------------------------------------------------*/
CAN_TxHeaderTypeDef     canOneTxHeader;
CAN_RxHeaderTypeDef     canOneRxHeader;
uint8_t                 canOneTxData[8];
uint8_t                 canOneRxData[8];
uint32_t                canOneTxMailbox;

int16_t                 canErrorCounter[2];
flagCan_t               flagCan;

uint8_t                 data_diagnostic[8];
uint8_t                 data_diagnostic_t[8];

/*--------------------------------------------------------- Bootloader handler function on user side start -----------------------------------------------------*/
void run_bootloader(void)
{
  watchdog_disable();
  while(1);
}
/*--------------------------------------------------------- Bootloader handler function on user side end -----------------------------------------------------*/

/* --------------------------------------------------------- Local Functions ----------------------------------------------------*/
void MX_CAN_FILTER_Init(uint8_t filter, uint32_t id, uint32_t mask);
void can_interrupt_enable_1();

void can_data_handler(CAN_RxHeaderTypeDef *rxHeader, uint8_t *rx_data)
{
  uint8_t i;

  if(rxHeader->ExtId == CAN_COMMAND_REQUEST_ID)
  {
    if((rx_data[0] == TYM_COMBINE) && (rx_data[1] == 0x80))
    {
      run_bootloader();
    }
  }
  else if(rxHeader->ExtId == DIAGNOSTIC_REQUEST_CAN_ID)
  {
    flagCan.diagnosticRequest = TRUE;
    for(i = 0; i < 8; i++)
    {
      data_diagnostic[i] = rx_data[i];
    }
  }
}

void can_receive_process()
{
  uint16_t temp;
  // Diagnostic message check
  if(flagCan.diagnosticRequest == TRUE)
  {
    flagCan.diagnosticRequest = FALSE;
    flagCan.diagnosticResponse = TRUE;
    
    data_diagnostic_t[0] = data_diagnostic[0];
    data_diagnostic_t[1] = data_diagnostic[1];
    data_diagnostic_t[2] = data_diagnostic[2];
    data_diagnostic_t[3] = data_diagnostic[3];

    if(data_diagnostic[0] == 0xF2) // Read
    {
      temp = get_memory(data_diagnostic);
      
      data_diagnostic_t[6] = (uint8_t)temp;
      data_diagnostic_t[7] = (uint8_t)(temp >> 8);
    }
    else if(data_diagnostic[0] == 0xF3) // Write
    {
      temp = set_memory(data_diagnostic);
      
      data_diagnostic_t[6] = (uint8_t)temp;
      data_diagnostic_t[7] = (uint8_t)(temp >> 8);
    }
    else if(data_diagnostic[0] == 0xF4) // Default setting
    {
      if((data_diagnostic[1] == 0x0F) && (data_diagnostic[2] == 0x27))          // 0x270F = 9999
      {
        default_memory_update();
      }
    }
  }
}
extern float rpmNew;

void can_transmit_packet()
{
  uint8_t data[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };  
  
  uint16_t engineSpeedLocal = (uint16_t) (rpmNew / 10);
  uint16_t jobHourLocal = (uint16_t) (jobHour / 1000);
  
  if(flagInput.rightLamp == ON)         data[0] |= 0x01;
  if(flagInput.leftLamp == ON)          data[0] |= 0x02;
  if(flagInput.tailLamp == ON)          data[0] |= 0x04;
  if(flagInput.charge == ON)            data[0] |= 0x08;
  if(flagWarning.oilPressure == ON)     data[0] |= 0x10;
  //if(flagInput.buzzerStop == ON)        data[0] |= 0x20;
  if(flagInput.grain_1 == ON)           data[0] |= 0x40;
  if(flagInput.grain_2 == ON)           data[0] |= 0x80;

  if(flagInput.grain_3 == ON)           data[1] |= 0x01;
  if(flagInput.grain_4 == ON)           data[1] |= 0x02;
  
  data[1] |= (0x01 & (engineSpeedLocal >> 8)) << 6;
  
  data[2] = 0x03 & (jobHourLocal >> 8);
  
  data[3] = (uint8_t)(tPowerVoltage * 10);
  data[4] = tFuelPercent;
  data[5] = (uint8_t) engineSpeedLocal;                                  // Engine RPM LSB
  data[6] = (uint8_t) jobHourLocal;
  data[7] = 0;

  can_transmit(METAPANEL_DATA_CAN_ID, data);
}

void can_transmit_diagnostic()
{
  uint8_t data[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };
  
  data[0] = data_diagnostic_t[0];
  data[1] = data_diagnostic_t[1];
  data[2] = data_diagnostic_t[2];
  data[3] = data_diagnostic_t[3];
  data[4] = data_diagnostic_t[4];
  data[5] = data_diagnostic_t[5];
  data[6] = data_diagnostic_t[6];
  data[7] = data_diagnostic_t[7];
    
  can_transmit(DIAGNOSTIC_RESPONSE_CAN_ID, data);
}

void can_transmit_process()
{
  static uint16_t timerPacket;
  
  timerPacket++;
  
  if(timerPacket >= CAN_TRANSMISSION_TIME)
  {
    timerPacket = 0;
    can_transmit_packet();
  }
  else if(flagCan.diagnosticResponse == TRUE)
  {
    flagCan.diagnosticResponse = FALSE;
    can_transmit_diagnostic();
  }
} 

uint8_t can_transmit(uint32_t id, uint8_t _data[])
{
  canOneTxHeader.IDE = CAN_ID_EXT;
  canOneTxHeader.RTR = CAN_RTR_DATA;
  canOneTxHeader.ExtId = id;
  canOneTxHeader.DLC = 8;
  
  canOneTxData[0] = _data[0];
  canOneTxData[1] = _data[1];
  canOneTxData[2] = _data[2];
  canOneTxData[3] = _data[3];
  canOneTxData[4] = _data[4];
  canOneTxData[5] = _data[5];
  canOneTxData[6] = _data[6];
  canOneTxData[7] = _data[7];
  
  canOneTxHeader.TransmitGlobalTime = DISABLE;
  if (HAL_CAN_AddTxMessage(&hcan1, &canOneTxHeader, canOneTxData, &canOneTxMailbox) != HAL_OK)
  {
    canErrorCounter[0]++;
    if(canErrorCounter[0] > 20)
    {
      HAL_CAN_DeInit(&hcan1);
      MX_CAN1_Init();
      canErrorCounter[0] = 0;
      
      can_interrupt_enable_1();
    }
    return FALSE;
  }
  else {
    if(canErrorCounter[0] > 0) 
    {
      canErrorCounter[0]--;  
    }
  }
  return TRUE;
}

/* CAN Interrupt function */

void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef *hcan)
{
  if(hcan->Instance == CAN1)
  {
    if (HAL_CAN_GetRxMessage(hcan, CAN_RX_FIFO0, &canOneRxHeader, canOneRxData) != HAL_OK)
    {
      /* Reception Error */
    }
    can_data_handler(&canOneRxHeader, canOneRxData);

    canOneRxHeader.DLC = 0;
  }
}

void can_init()
{
  MX_CAN1_Init();
} // 20250724

void can_start()
{
  can_interrupt_enable_1();
}

/**
  * @brief CAN1 Initialization Function
  * @param None
  * @retval None
  */ 
void MX_CAN1_Init(void)
{

  /* USER CODE BEGIN CAN1_Init 0 */

  /* USER CODE END CAN1_Init 0 */

  /* USER CODE BEGIN CAN1_Init 1 */

  /* USER CODE END CAN1_Init 1 */
  hcan1.Instance = CAN1;
  hcan1.Init.Prescaler = 21;
  hcan1.Init.Mode = CAN_MODE_NORMAL;
  hcan1.Init.SyncJumpWidth = CAN_SJW_2TQ;
  hcan1.Init.TimeSeg1 = CAN_BS1_5TQ;
  hcan1.Init.TimeSeg2 = CAN_BS2_2TQ;
  hcan1.Init.TimeTriggeredMode = DISABLE;
  hcan1.Init.AutoBusOff = DISABLE;
  hcan1.Init.AutoWakeUp = DISABLE;
  hcan1.Init.AutoRetransmission = ENABLE;
  hcan1.Init.ReceiveFifoLocked = DISABLE;
  hcan1.Init.TransmitFifoPriority = DISABLE;
  if (HAL_CAN_Init(&hcan1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN CAN1_Init 2 */

  // Filter CAN ID is updated on 2021.12.28 for mass product
  MX_CAN_FILTER_Init(0, 0, 0);

  if(HAL_CAN_ActivateNotification(&hcan1, CAN_IT_RX_FIFO0_MSG_PENDING) != HAL_OK)
  {
    Error_Handler();
  }

  if(HAL_CAN_Start(&hcan1) != HAL_OK)
  {
    Error_Handler();
  }
  //can_interrupt_enable_1();
  /* USER CODE END CAN1_Init 2 */

}  // 20250724

/* CAN FILTER init function*/
void MX_CAN_FILTER_Init(uint8_t filter, uint32_t id, uint32_t mask)
{
  CAN_FilterTypeDef  sFilterConfig;

  if(filter > 27){
    filter = 27;
  }
  
  sFilterConfig.FilterBank = filter;
  sFilterConfig.FilterMode = CAN_FILTERMODE_IDMASK;                             // Changed on 2024.07.18
  sFilterConfig.FilterScale = CAN_FILTERSCALE_32BIT;
  sFilterConfig.FilterFIFOAssignment = 0;
  sFilterConfig.FilterActivation = ENABLE;
  sFilterConfig.SlaveStartFilterBank = 14;
    
  id = (id << 3) | (1 << 2);                                    // IDE should be 1        
  mask = (mask << 3) | (1 << 2);                                // IDE should be 1
  
  sFilterConfig.FilterIdLow = id;
  sFilterConfig.FilterIdHigh = id >> 16;
  sFilterConfig.FilterMaskIdLow = id & mask;
  sFilterConfig.FilterMaskIdHigh = (id & mask) >> 16;

  if(HAL_CAN_ConfigFilter(&hcan1, &sFilterConfig) != HAL_OK)
  {
    // Filter configuration Error 
    Error_Handler();
  }
}

/**
* @brief CAN MSP Initialization
* This function configures the hardware resources used in this example
* @param hcan: CAN handle pointer
* @retval None
*/
void HAL_CAN_MspInit(CAN_HandleTypeDef* hcan)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
  if(hcan->Instance==CAN1)
  {
  /* USER CODE BEGIN CAN1_MspInit 0 */

  /* USER CODE END CAN1_MspInit 0 */
    /* Peripheral clock enable */
    __HAL_RCC_CAN1_CLK_ENABLE();
    
    __HAL_RCC_GPIOD_CLK_ENABLE();
    /**CAN1 GPIO Configuration
    PD0     ------> CAN1_RX
    PD1     ------> CAN1_TX
    */
    GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_1;;    // GPIO_PIN_0|GPIO_PIN_1;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
    GPIO_InitStruct.Alternate = GPIO_AF9_CAN1;
    HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);

    /* CAN1 interrupt Init */
    
  /* USER CODE BEGIN CAN1_MspInit 1 */

  /* USER CODE END CAN1_MspInit 1 */
  }
}

void can_interrupt_enable_1()
{
  HAL_NVIC_SetPriority(CAN1_RX0_IRQn, 1, 0); // HAL_NVIC_SetPriority(CAN1_RX0_IRQn, 0, 0); 
  HAL_NVIC_EnableIRQ(CAN1_RX0_IRQn);
}

/**
* @brief CAN MSP De-Initialization
* This function freeze the hardware resources used in this example
* @param hcan: CAN handle pointer
* @retval None
*/
void HAL_CAN_MspDeInit(CAN_HandleTypeDef* hcan)
{
  if(hcan->Instance==CAN1)
  {
  /* USER CODE BEGIN CAN1_MspDeInit 0 */

  /* USER CODE END CAN1_MspDeInit 0 */
    /* Peripheral clock disable */
    __HAL_RCC_CAN1_CLK_DISABLE();
    
    /**CAN1 GPIO Configuration
    PD0     ------> CAN1_RX
    PD1     ------> CAN1_TX
    */
    HAL_GPIO_DeInit(GPIOD, GPIO_PIN_0|GPIO_PIN_1);

    /* CAN1 interrupt DeInit */
    HAL_NVIC_DisableIRQ(CAN1_RX0_IRQn);
  /* USER CODE BEGIN CAN1_MspDeInit 1 */

  /* USER CODE END CAN1_MspDeInit 1 */
  }
}
/**
  * @brief This function handles CAN1 RX0 interrupts.
  */
void CAN1_RX0_IRQHandler(void)
{
  /* USER CODE BEGIN CAN1_RX0_IRQn 0 */

  /* USER CODE END CAN1_RX0_IRQn 0 */
  HAL_CAN_IRQHandler(&hcan1);
  /* USER CODE BEGIN CAN1_RX0_IRQn 1 */

  /* USER CODE END CAN1_RX0_IRQn 1 */
}