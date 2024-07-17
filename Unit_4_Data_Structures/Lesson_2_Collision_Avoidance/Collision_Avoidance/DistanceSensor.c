/*
 * DistanceSensor.c
 *
 *  Created on: Jul 17, 2024
 *      Author: Mohamed Hamdy
 */

#include "DistanceSensor.h"

//Define block variables
uint32_t DistanceSent;

uint32_t RANDOM(int32_t start,int32_t end,uint32_t numberofvalues)
{
	//Generate Random Value from range start to end
	int32_t RandomValue;

	for (int i = 0; i < numberofvalues; i++) {
		RandomValue = rand() % (end-start+1) + start;
	}
	return RandomValue;
}

void Sensor_init()
{
	printf("Sensor initialization\n");
}

StateDefine(Reading)
{
	SensorStatus_t = Reading;
	DistanceSent = RANDOM(45,55,1);
	printf("Sensor Reading State: Distance = %u\n", DistanceSent);

	SensorDistanceSignal(DistanceSent);
	ptrSensor = StateCall(Reading);
}
