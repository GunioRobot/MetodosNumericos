clc
function u=f1(X)
  x=X(1);y=X(2);
  u=[x*exp(x*y+0.8)+exp(y^2)-3;
  x^2-y-0.5*exp(x*y)];
endfunction

function u=jf1(X)
  x=X(1);y=X(2);
  u=[x*y*exp(x*y+0.8)+exp(x*y+0.8) 2*y*exp(y^2)+x^2*exp(x*y+0.8);
    2*x-0.5*y*exp(x*y) -0.5*x*exp(x*y)-1];
endfunction

x=[0 0]';
sol=newton2(f1,jf1,x,50);
sol(1)

nres=norm(f1(sol))