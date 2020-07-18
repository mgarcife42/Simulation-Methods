##More efficient way: use the method for the particular function of Ex3.1
function [t,x] = myeuler2(t0,x0,T,h)
  x(1)=x0(1)-h*x0(2);
  x(2)=x0(2)+h*x0(1);
  N=floor((T-t0)/h);
  for n=1:(N-1)
    x=[x; [x(n,1)-h*x(n,2),x(n,2)+h*x(n,1)]];
  endfor
  t=(t0):h:(t0+N*h);
  if(t0+N*h<T)
    h=T-t0-N*h;
    t=[t, T];
    x=[x; [x(N,1)-h*x(N,2),x(N,2)+h*x(N,1)]];
  endif
  x=[x0; x];
endfunction