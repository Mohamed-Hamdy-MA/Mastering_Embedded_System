/*
 * StateMachine.h
 *
 *  Created on: Jul 17, 2024
 *      Author: Mohamed Hamdy
 */

#ifndef STATEMACHINE_H_
#define STATEMACHINE_H_

#define StateDefine(_StateName_) void State##_StateName_()
#define StateCall(_StateName_) State##_StateName_

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

//Define Interfaces(Connections) between Blocks
void SensorDistanceSignal(uint32_t Distance);
void MotorSpeedSignal(uint32_t Speed);

#endif /* STATEMACHINE_H_ */
