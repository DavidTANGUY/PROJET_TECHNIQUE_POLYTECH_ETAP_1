/**
  ******************************************************************************
  * @file    sensor_service.h 
  * @author  SRA - Central Labs
  * @version v2.1.0
  * @date    5-Apr-2019
  * @brief   Sensors services APIs
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */
  
/* Define to prevent recursive inclusion -------------------------------------*/  
#ifndef _SENSOR_SERVICE_H_
#define _SENSOR_SERVICE_H_

#ifdef __cplusplus
 extern "C" {
#endif 

/* Includes ------------------------------------------------------------------*/
#include "TargetFeatures.h"

#include "bluenrg_types.h"
#include "bluenrg_gatt_server.h"
#include "bluenrg_gap.h"
#include "string.h"
#include "bluenrg_gap_aci.h"
#include "bluenrg_gatt_aci.h"
#include "hci_const.h"
#include "bluenrg_hal_aci.h"
#include "bluenrg_aci_const.h"   
#include "hci.h"
#include "hci_le.h"
#include "sm.h"

#include <stdlib.h>
#include "main.h"


/* Exported functions ------------------------------------------------------- */
extern tBleStatus Add_HWServW2ST_Service(void);
extern tBleStatus Environmental_Update(int32_t Press,uint16_t Hum,int16_t Temp2,int16_t Temp1);

extern tBleStatus LED_Update(uint8_t LedStatus);

extern tBleStatus Stderr_Update(uint8_t *data,uint8_t length);
extern tBleStatus Term_Update(uint8_t *data,uint8_t length);

extern tBleStatus Add_ConfigW2ST_Service(void);
extern tBleStatus Config_Notify(uint32_t Feature,uint8_t Command,uint8_t val);

extern void setConnectable(void);
extern void HCI_Event_CB(void *pckt);


/*!NEW!*/
void Make_Connection(void);
void startReadTXCharHandle(void);
void startReadRXCharHandle(void);
void enableNotification(void);
void receiveData(uint8_t* data_buffer, uint8_t Nb_bytes);
void sendData(uint8_t* data_buffer, uint8_t Nb_bytes);
tBleStatus Add_Sample_Service(void);
void Attribute_Modified_CB(uint16_t handle, uint8_t data_length,
                           uint8_t *att_data);
void GAP_ConnectionComplete_CB(uint8_t addr[6], uint16_t handle);
void GAP_DisconnectionComplete_CB(void);
void GATT_Notification_CB(uint16_t attr_handle, uint8_t attr_len,
                          uint8_t *attr_value);
void user_notify(void * pData);

/* Exported constants --------------------------------------------------------*/

/* For enabling the capability to handle BlueNRG Congestion */
#define ACC_BLUENRG_CONGESTION

#ifdef ACC_BLUENRG_CONGESTION
/* For defining how many events skip when there is a congestion */
#define ACC_BLUENRG_CONGESTION_SKIP 30
#endif /* ACC_BLUENRG_CONGESTION */

/*************** Don't Change the following defines *************/

/* Define the Max dimesion of the Bluetooth characteristics
for each packet used for Console Service */
#define W2ST_CONSOLE_MAX_CHAR_LEN 20

/* Define the symbol used for defining each termination string
used in Console service */
#define W2ST_CONSOLE_END_STRING "\0"

/* @brief  Scale factor. It is used to scale acceleration from mg to g */ 
#define FROM_MG_TO_G    0.001

/* Feature mask for Accelerometer events */
#define FEATURE_MASK_ACC_EVENTS 0x00000400

/* Feature mask for LED */
#define FEATURE_MASK_LED 0x20000000

/* BLE Characteristic connection control */
/* Environmental Data */
#define W2ST_CONNECT_ENV           (1    )
/* LED status */
#define W2ST_CONNECT_LED           (1<<1 )
/* Acceleration/Gyroscope/Magneto */
#define W2ST_CONNECT_ACC_GYRO_MAG  (1<<2 )

/* Standard Terminal */
#define W2ST_CONNECT_STD_TERM      (1<<8 )

/* Standard Error */
#define W2ST_CONNECT_STD_ERR       (1<<9 )

/* HW Advance Features */
#define W2ST_CONNECT_ACC_EVENT     (1<<10)

/* Gas Gouge Feature */
#define W2ST_CONNECT_GG_EVENT      (1<<11)

#define W2ST_CHECK_CONNECTION(BleChar) ((ConnectionBleStatus&(BleChar)) ? 1 : 0)
#define W2ST_ON_CONNECTION(BleChar)    (ConnectionBleStatus|=(BleChar))
#define W2ST_OFF_CONNECTION(BleChar)   (ConnectionBleStatus&=(~BleChar))

#ifdef __cplusplus
}
#endif

#endif /* _SENSOR_SERVICE_H_ */

/******************* (C) COPYRIGHT 2016 STMicroelectronics *****END OF FILE****/