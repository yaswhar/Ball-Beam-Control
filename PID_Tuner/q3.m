%% Question 3 - Project - PID Tuner
s=tf('s');
G_plant=(0.03613*s+0.335)/(s^2+0.2381*s);
G_motor=0.0274/(0.003228*s^2+0.003508*s);
G_ff=G_motor*G_plant/(5*2);
[Ns,Xs,Ms,Ys]=Euclid(G_ff,1);
G_ffs=tf2sym(G_ff);
syms s a
Qs=1/(G_ffs*(s+a)^5);
N=tf2sym(Ns);
M=tf2sym(Ms);
X=tf2sym(Xs);
Y=tf2sym(Ys);
Ks=simplifyFraction(vpa((Qs)/(1-Qs),4));
Ks=subs(Ks,a,4);
Ks=vpa(simplifyFraction(Ks),4);
pretty(Ks)
K=sym2tf(Ks);
K=zpk(K);
K=K/dcgain(K*G_ff)
