/*
 * DistanceSensor.h
 *
 *  Created on: Jul 17, 2024
 *      Author: Mohamed Hamdy
 */

#ifndef DISTANCESENSOR_H_
#define DISTANCESENSOR_H_

#include "StateMachine.h"

//Define enumeration type contain Status
enum {
	Reading
}SensorStatus_t;

//State prototype (State Declaration)
void Sensor_init();
StateDefine(Reading);

//Define pointer to function to access state function
void (*ptrSensor)();

#endif /* DISTANCESENSOR_H_ */
