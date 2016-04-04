clear all
clc

syms s

% G=5/((s)(s-1))

num=5;
den=sym2poly((s)*(s-1));

G=tf(num,den);

num1=1;
den1=sym2poly(1+0.01*s);

H=tf(num1,den1);

%Kp=8.3887;
%Ki=1.8893;
%Kd=8.2759;

Kp=0.5;
Ki=0;
Kd=0;


C=pid(Kp,Ki,Kd);

T=feedback(C*G,H);

step(T);

%sisotool(G);
