/*
 * HighPressureDetection.h
 *
 *  Created on: Jul 19, 2024
 *      Author: Mohamed Hamdy
 */

#ifndef HIGHPRESSUREDETECTION_H_
#define HIGHPRESSUREDETECTION_H_

#include "StateMachine.h"

//State prototype (State Declaration)
StateDefine(NormalPressure);
StateDefine(HighPressure);

//Define pointer to function to access state function
extern void (*ptrHighPressureDetection)();

#endif /* HIGHPRESSUREDETECTION_H_ */
