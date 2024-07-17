/*
 * main.c
 *
 *  Created on: Jul 17, 2024
 *      Author: Mohamed Hamdy
 */

//#include "StateMachine.h"
#include "DistanceSensor.h"
#include "ObstaclesDetection.h"
#include "MotionActuator.h"

void setup()
{
	//Initialize all drivers
	Sensor_init();
	Actuator_init();
	//set blocks pointers
	ptrSensor = StateCall(Reading);
	ptrCollisionAvoidance = StateCall(Waiting);
	ptrActuator = StateCall(Idle);
}

int main(void)
{
	setup();
	volatile uint32_t delaycount=0;
	while(1)
	{
		ptrSensor();
		ptrCollisionAvoidance();
		ptrActuator();
		for (delaycount = 0; delaycount < 5000; delaycount++);
	}
	return 1;
}
