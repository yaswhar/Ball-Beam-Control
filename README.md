# Ball and Beam Control System Design - Winter 2023

This repository contains MATLAB code and report for a course project in Automatic Controller Design course, instructed by [Prof. Aria Alasty](http://sharif.ir/~aalasti/) at Sharif University of Technology. Huge shout out to my friend and teammate in this project, [Erfan Radfar](https://github.com/Erfanmode).

## Project Description

The project involves designing a control system for the ball and beam setup. The system consists of a long beam with the ability to move a ball inside it. The control objective is to accurately stabilize the ball at the center of the beam. 

To achieve this, an ultrasonic sensor provides real-time sensing of the ball's position and velocity. The beam can rotate using a motor and gearbox system at its center or sides. The motor angle θ is controlled to manipulate the beam orientation and control the ball position r.

![System](https://github.com/yaswhar/Ball-Beam-Control/blob/main/images/system.jpg)

## Project Requirements

The control design should meet the following criteria:

- Overshoot percentage less than 20% 
- Settling time under 8 seconds

The modeling, control design, simulation and analysis is conducted in MATLAB/Simulink using the supplied `modlBB15` system model.

## Repository Contents

This repository contains:

- `Sys_Ident` - System identification to obtain θ to r transfer function
- `Stabilizer&SISO` - Stabilizing the inner control loop and designing PID controller with SISO toolbox
- `PID_Tuner` - Designing PID with PID Tuner 
- `PID_Methods` - Designing PID with method such as ZN, R-ZN, A-H, ...
- `OptimPID` - Designing PID with OptimPID App.
- `2DOF_PID` - Designing 2DOF-PID with MATLAB Simulinks 2DOF-PID Block
- `WithDist` - Introducing a input disturbance of 30Hz with the amplitude of 1.
- `controller_project(1).pdf` - Report of the project in Persian.
