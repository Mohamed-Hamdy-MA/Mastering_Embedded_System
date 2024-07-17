/*
 * ObstaclesDetection.c
 *
 *  Created on: Jul 17, 2024
 *      Author: Mohamed Hamdy
 */

#include "ObstaclesDetection.h"

//Define block variables
uint32_t DistanceReceived;
uint32_t SpeedSent;
uint32_t DistanceThreshold=50;

void SensorDistanceSignal(uint32_t Distance)
{
	DistanceReceived = Distance;
	if (DistanceReceived <= DistanceThreshold)
	{
		ptrCollisionAvoidance = StateCall(Waiting);
	}
	else
	{
		ptrCollisionAvoidance = StateCall(Driving);
	}

	printf("Sensor -----> ObstaclesDetection: SensorDistanceSignal(%u)\n", Distance);
}

StateDefine(Waiting)
{
	CollisionAvoidanceStatus_t = Waiting;
	SpeedSent = 0;
	printf("Waiting State - Obstacles Detected: Distance = %u\n", DistanceReceived);
	MotorSpeedSignal(SpeedSent);
}
StateDefine(Driving)
{
	CollisionAvoidanceStatus_t = Driving;
	SpeedSent = 30;
	printf("Driving State - No Obstacles Detected: Distance = %u\n", DistanceReceived);
	MotorSpeedSignal(SpeedSent);
}
