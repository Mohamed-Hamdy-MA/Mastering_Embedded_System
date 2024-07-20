/*
 * HighPressureDetection.c
 *
 *  Created on: Jul 19, 2024
 *      Author: Mohamed Hamdy
 */

#include "HighPressureDetection.h"

//Define integration functions as extern
extern int getPressureVal();

//Define enumeration type contain Status
enum {
	NormalPressure,
	HighPressure
}HighPressureDetectionStatus;

//Define pointer to function to access state function
void (*ptrHighPressureDetection)();

//Define Block Variables
uint32_t PressureReceived;
uint32_t PressureThreshold = 15;

//Define Interfaces if this block is a destination

//Define States
StateDefine(NormalPressure)
{
	HighPressureDetectionStatus = NormalPressure;
	PressureReceived = (uint32_t) getPressureVal();
	(PressureReceived >= PressureThreshold) ? (ptrHighPressureDetection = StateCall(HighPressure)) : (ptrHighPressureDetection = StateCall(NormalPressure));

}

StateDefine(HighPressure)
{
	HighPressureDetectionStatus = HighPressure;
	SetAlarmSignal();
	PressureReceived = (uint32_t) getPressureVal();
	(PressureReceived >= PressureThreshold) ? (ptrHighPressureDetection = StateCall(HighPressure)) : (ptrHighPressureDetection = StateCall(NormalPressure));

}
