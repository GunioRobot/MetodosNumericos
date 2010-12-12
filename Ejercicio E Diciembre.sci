clc;
format('e',12)
deff('y=f1(x)','y=exp(x*cos(x))+2*x*sin(x)')
fplot2d(0:0.01:10,f1),xgrid // En la respuesta lo he puesto sin ",xgrid"

[x,e,tol]=bipart(f1,2,4,100)
x
esp=0.5e-5;
f1(x-esp)*f1(x+esp)


[sol,e,xant,xant2]=secante(f1,2,4,100)
norm(sol,1)
esp=0.5e-5;
f1(x-esp)*f1(x+esp)

deff('y=df1(x)','y=exp(x*cos(x))*(cos(x)-x*sin(x))+2*sin(x)+2*x*cos(x)')
deff('y=d2f1(x)','y=exp(x*cos(x))*(cos(x)-x*sin(x))^2-2*x*sin(x)+exp(x*cos(x))*(-2*sin(x)-x*cos(x))+4*...
cos(x)')
[x,e,tol]=bipart(df1,6,7,100)
fsolve(x,d2f1)