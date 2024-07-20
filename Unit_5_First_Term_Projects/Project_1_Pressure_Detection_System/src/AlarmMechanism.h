/*
 * AlarmMechanism.h
 *
 *  Created on: Jul 19, 2024
 *      Author: Mohamed Hamdy
 */

#ifndef ALARMMECHANISM_H_
#define ALARMMECHANISM_H_

#include "StateMachine.h"

//State prototype (State Declaration)
StateDefine(AlarmOFF);
StateDefine(AlarmON);

//Define pointer to function to access state function
extern void (*ptrAlarmMechanism)();

#endif /* ALARMMECHANISM_H_ */
