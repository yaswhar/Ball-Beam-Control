s=tf('s');
G_plant=(0.03613*s+0.335)/(s^2+0.2381*s);
G_motor=0.0274/(0.003228*s^2+0.003508*s);
G_ff=G_motor*G_plant/(5*2);
rlocus(G_ff)
G_ffs=tf2sym(G_ff);
syms s a
Qs=1/(G_ffs*(s+a)^5);
Ks=simplifyFraction(vpa((Qs)/(1-Qs),4));
Ks=subs(Ks,a,4);
Ks=vpa(simplifyFraction(Ks),4);
K=sym2tf(Ks);
K=zpk(K);
K=K/dcgain(K*G_ff)
Ks=tf2sym(K);
Ks=vpa(simplifyFraction(Ks),4);
pretty(Ks)
