clc
x=[1 3 5 7 9 11 13 15 17];
y=[1.2 3.4 9.1 4.5 0.7 2.2 -1.9 -3.1 0.2];

p=newtondi(x,y)
x2=1:0.01:17;
y2=horner(p,x2);
//plot(x2,y2,'red');xgrid;
q=p-7.2
roots(q)

s=natural(x,y);
splinval(s,x,1.5)
s1=s(1)
horner(s1,1.5)
ds1=poly([0.8928733 -1.2427604 0.6213801],'x','c') // Esto se tiene que hacer de otra manera
horner(ds1,1.5)

A=[sum(x) sum(x.^2) sum(x.*exp(-x));
sum(x.^2) sum(x.^3) sum((x.^2).*exp(-x));
sum(x.*exp(-x)) sum((x.^2).*exp(-x)) sum(x.*exp(-2*x))];
b=[sum(y) sum(y.*x) sum(y.*exp(-x))]';
sol=A\b
