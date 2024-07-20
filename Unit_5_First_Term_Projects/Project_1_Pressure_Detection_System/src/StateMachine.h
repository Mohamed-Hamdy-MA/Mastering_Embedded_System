/*
 * StateMachine.h
 *
 *  Created on: Jul 19, 2024
 *      Author: Mohamed Hamdy
 */

#ifndef STATEMACHINE_H_
#define STATEMACHINE_H_


#define StateDefine(_StateName_) void State##_StateName_()
#define StateCall(_StateName_) State##_StateName_

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

//Declare signals interfaces(Connections) between Blocks
void SetAlarmSignal(void);

#endif /* STATEMACHINE_H_ */
