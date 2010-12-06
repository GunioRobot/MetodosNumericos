clc;
n = 100;
A = diag([5:5:n*5]);
A(5,1) = 1;

for f=1:n
  for c=1:n
    if (abs(f - c) == 1) then
      A(f,c) = f + c;
    end
  end
end

A=sparse(A);

b=zeros(n,1);

for f=1:n
  b(f,1)=abs(f-10);
end

//whos
clc
[x,res,BJ,CJ,rad]=jacobi(full(A),b,50,zeros(b));
x(1)
norm(res,1)

