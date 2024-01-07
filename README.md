# Ball and Beam Control System Design - Winter 2023

This repository contains MATLAB code and report for a course project in Automatic Controller Design course, instructed by [Dr. Aria Alasty](http://sharif.ir/~aalasti/) at Sharif University of Technology. Huge shout out to my friend and teammate in this project, Erfan Radfar.

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

- `model_identification.m` - System identification to obtain θ to r transfer function
- `PID_design_*.m` - PID controller design using different methods
- `robust_controller_design.m` - Robust controller for disturbance rejection 
- `project_report.pdf` - Complete report with explanations, analysis, plots
- `*.slx` - MATLAB/Simulink model and simulation files

## How to Run

The MATLAB code can be executed by:

1. Cloning the repository
2. Opening the `*.m` scripts in MATLAB
3. Running each script to generate plots and analysis
4. Viewing the project report for results discussion
