/*
 * ObstaclesDetection.h
 *
 *  Created on: Jul 17, 2024
 *      Author: Mohamed Hamdy
 */

#ifndef OBSTACLESDETECTION_H_
#define OBSTACLESDETECTION_H_

#include "StateMachine.h"

enum {
	Waiting,
	Driving
}CollisionAvoidanceStatus_t;

//State prototype (State Declaration)
StateDefine(Waiting);
StateDefine(Driving);

//Define pointer to function to access state function
void (*ptrCollisionAvoidance)();

#endif /* OBSTACLESDETECTION_H_ */
