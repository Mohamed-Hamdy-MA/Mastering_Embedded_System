/*
 * main.c
 *
 *  Created on: Jul 19, 2024
 *      Author: Mohamed Hamdy
 */


#include "driver.h"
#include "HighPressureDetection.h"
#include "AlarmMechanism.h"

void setup()
{
	//Initialize all drivers
	GPIO_INITIALIZATION();
	//set blocks pointers
	ptrHighPressureDetection = StateCall(NormalPressure);
	ptrAlarmMechanism = StateCall(AlarmOFF);
}

int main ()
{
	setup();
	while (1)
	{
		ptrHighPressureDetection();
		ptrAlarmMechanism();
	}

}
