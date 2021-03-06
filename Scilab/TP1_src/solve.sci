function [x] = usolve(U, b, n)
  x = zeros(n,1);
  x(n) = b(n) / U(n,n);
  for i = n-1 : -1 : 1
    x(i) = (b(i) - U(i,(i+1) : n) * x((i+1) : n)) / U(i,i);
  end
endfunction

function [x] = lsolve(L, b, n)
  x = zeros(n,1);
  x(1) = b(1) / L(1,1);
  for i = 1:n
    x(i) = (b(i) - L(i, 1:(i-1)) * x(1:(i-1))) / L(i,i);
  end
endfunction
