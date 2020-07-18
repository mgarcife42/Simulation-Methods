function x = fillvector2(x1,D,N)
  for n=1:N
    x(n)=x1+D*(n-1);
  endfor
endfunction