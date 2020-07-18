% Crea un vector de longitud N de la forma (x1,x1+D,x1+2D,...x1+(N-1)*D)
% Ejemplo: fillvector2(1,1,10) genera (1,2,3,4,5,6,7,8,9,10)
function x = fillvector2(x1,D,N)
  for n=1:N
    x(n)=x1+D*(n-1);
  endfor
endfunction
