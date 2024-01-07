%% Yashar Zafari - 99106209
s=tf('s');
G=50*(s+0.5)/((s+1)*(s+1.5)^2*(s+2));
Glag=0.155*(s+0.87)/(s+0.07);
Glead=4.75*(s+3.91)/(s+11.75);
Gleadlag=4.46*((s+0.722)*(s+0.072))/((s+14.44)*(s+0.0041));
OL1=Glag^2*G; OL2=Glead^3*G; OL3=Gleadlag*G;
%% System
figure
bode(G);
%% Lag
bode(OL1)
figure
step(OL1/(1+OL1))
%% Lead
bode(OL2)
figure
step(OL2/(1+OL2))
%% Lead-Lag
bode(OL3)
figure
step(OL3/(1+OL3))