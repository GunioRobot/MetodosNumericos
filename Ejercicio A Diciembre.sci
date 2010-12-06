A=[1 -3 2 1 0; 0 3 10 -1 2; 1 10 30 -1 1; 2 4 0 10 2; 2 11 1 0 10];
b=[1 1 2 1 1]';

[x,e]=gausspar(A,b)
r=A*x-b;
norm(r,'inf')

[xj,res,BJ,CJ,rad]=jacobi(A,b,50,zeros(b));
normaj=norm(BJ,1)

[x,res,BGS,CGS,rad]=gseidel(A,b,50,zeros(b));
rad
[x,res,BSOR,CSOR,rad]=sor(A,b,0.1,50,zeros(b));
rad

A
A'