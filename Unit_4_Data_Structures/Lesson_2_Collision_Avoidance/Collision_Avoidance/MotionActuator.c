/*
 * MotionActuator.c
 *
 *  Created on: Jul 17, 2024
 *      Author: Mohamed Hamdy
 */

#include "MotionActuator.h"

//Define block variables
uint32_t SpeedRecevied;

void Actuator_init()
{
	printf("Actuator initialization\n");
}

void MotorSpeedSignal(uint32_t Speed)
{
	SpeedRecevied = Speed;
	ptrActuator = StateCall(Busy);
	printf("ObstaclesDetection -----> MotionActuator: MotorSpeedSignal(%u)\n", Speed);
}

StateDefine(Idle)
{
	ActuatorStatus_t = Idle;
	printf("Actuator Idle State: Speed = %u\n", SpeedRecevied);
	ptrActuator = StateCall(Idle);
}
StateDefine(Busy)
{
	ActuatorStatus_t = Busy;
	printf("Actuator Busy State: Speed = %u\n", SpeedRecevied);
	ptrActuator = StateCall(Idle);
}

