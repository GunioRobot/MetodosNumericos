clc;
// Creamos el sistema de ecuaciones con la matriz esparcida de 100x100
n=100;
A=sparse(- diag(ones(n-1,1),1) - diag(ones(n-1,1),-1) - 2 * diag(ones(n-2,1),2) - 2 * diag(ones(n-2,1),-2) + diag([4:4:n*4]));
b=[1,7*ones(1,98),2]';

// Jacobi con 50 iteraciones
i = 50;
[x,res,BJ,CJ,rad]=jacobi(full(A),b,i,zeros(b));

// Norma infinita de BJ
normaBJ = norm(BJ,'inf')

// Calculamos la cota del error
[x0,res0,BJ0,CJ0,rad0]=jacobi(full(A),b,0,zeros(b));
[x1,res1,BJ1,CJ1,rad1]=jacobi(full(A),b,1,zeros(b));

err = (normaBJ^i * norm((x1-x0),'inf'))/(1-normaBJ)

// Componente 3 del vector soluci—n en Jacobi con 50 iteraciones
x(3)

// Componente 3 del vector soluci—n en SOR con 5 iteraciones y w=1.1
[xSOR,resSOR,BSOR,CSOR,radSOR]=sor(full(A),b,1.1,5,zeros(b));
xSOR(3)

// Ver la memoria (observar la matriz A en sparse)
whos