# Ball-Beam-Control
This repository contains files related to Automatic Control course project, instructed by [Dr. Aria Alasty](http://sharif.ir/~aalasti/), at Sharif University of Technology.

## Project Overview

The goal of this project was to model, simulate, analyze stability, and design controllers for a ball and beam system. The controllers target position control of the ball on the beam by manipulating the beam angle. Analysis and design were done in MATLAB.

Key aspects:

- Mathematical modeling of ball and beam system
- Linearization of model around operating point
- Stability analysis
- Proportional controller design and simulation 
- Lag compensator design to improve transient response
- PID controller design and simulation with saturation
- Tracking sinusoidal position setpoint 

## Repository Contents

- `report.pdf`: Details of analysis, design, simulation results and discussion
- `/simulation`: Simulink model wiring plant with controllers  
- `/results`: Output plots from simulations

## System Parameters  

- Ball mass (m) = 0.1 kg  
- Beam mass (M) = 1 kg
- Beam length (L) = 0.6 m
- Ball radius (R) = 0.05 m

## Simulation Cases

Proportional, lag compensator, PID controllers were designed and simulated for the below cases:  

- Setpoint tracking performance
- Disturbance rejection performance
- Robustness tests

Plots in `results/` compare closed loop response for each case.
