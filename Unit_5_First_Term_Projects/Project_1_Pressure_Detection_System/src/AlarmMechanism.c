/*
 * AlarmMechanism.c
 *
 *  Created on: Jul 19, 2024
 *      Author: Mohamed Hamdy
 */

#include "AlarmMechanism.h"


//Define integration functions as extern
extern void Set_Alarm_actuator(int i);
extern void Delay(int nCount);

//Define enumeration type contain Status
enum {
	AlarmOFF,
	AlarmON
}AlarmMechanismStatus;

//Define pointer to function to access state function
void (*ptrAlarmMechanism)();

//Define Block Variables
uint32_t AlarmDuration=60;


//Define Interfaces if this block is a destination
void SetAlarmSignal(void)
{
	ptrAlarmMechanism = StateCall(AlarmON);
}

//Define States
StateDefine(AlarmOFF)
{
	AlarmMechanismStatus = AlarmOFF;
	Set_Alarm_actuator(1);
}

StateDefine(AlarmON)
{
	AlarmMechanismStatus = AlarmON;
	Set_Alarm_actuator(0);
	Delay((int32_t)AlarmDuration * 100000);
	ptrAlarmMechanism = StateCall(AlarmOFF);
}
