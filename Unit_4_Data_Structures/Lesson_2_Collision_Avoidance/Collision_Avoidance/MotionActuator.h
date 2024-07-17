/*
 * MotionActuator.h
 *
 *  Created on: Jul 17, 2024
 *      Author: Mohamed Hamdy
 */

#ifndef MOTIONACTUATOR_H_
#define MOTIONACTUATOR_H_

#include "StateMachine.h"

//Define enumeration type contain Status
enum {
	Idle,
	Busy
}ActuatorStatus_t;

//State prototype (State Declaration)
void Actuator_init();
StateDefine(Idle);
StateDefine(Busy);

//Define pointer to function to access state function
void (*ptrActuator)();

#endif /* MOTIONACTUATOR_H_ */
