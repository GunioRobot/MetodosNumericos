clc
// Ejercicio 1
x=-%pi:1:%pi
deff('y=f1(x)','y=cos(x^2)+cos(2*x)+cos(x)^2')
y=f1(x)
p1=newtondi(x,y)
// Resultado: 0.2107559

// Ejercicio 2
eval1=horner(p1,0.5);
deff('y=fError(x)','y=128*x^7*sin(x^2)-3360*x^3*sin(x^2)-1344*x^5*cos(x^2)+1680*x*cos(x^2)+128*sin(2*x)+128*cos(x)*sin(x)');
e=fError(