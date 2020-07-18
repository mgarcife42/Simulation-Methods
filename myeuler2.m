% x va a ser una matriz de dos columnas y muchas filas donde en cada fila se almacenan 2 coordenadas
% que salen al ir resolviendo numéricamente una ecuación diferencial (las líneas de código que están fuera del
% loop las dejo como comentario, puedes ignorarlas ya que no afectan en nada al tiempo)
function [t,x] = myeuler2(t0,x0,T,h) % puedes pensar t0=0 y x0 un vector de dos componentes
  x(1)=x0(1)-h*x0(2);
  x(2)=x0(2)+h*x0(1);
  % Aquí piensa que quiero coger T muy grande (10^8) y h muy pequeña (10^-3), con lo cual sale una N enorme (10^11) 
  N=floor((T-t0)/h); % floor = parte entera. Ejemplo: floor(4.1) es 4
  for n=1:(N-1)
    x=[x; [x(n,1)-h*x(n,2),x(n,2)+h*x(n,1)]]; % Ejemplo de lo que hace esto: si x es [1,2], entonces [x; [3,4]] produce la matriz    1 2
  endfor                                      %                                                                                      3 4
% Irrelevante:
%  t=(t0):h:(t0+N*h);
%  if(t0+N*h<T)
%    h=T-t0-N*h;
%    t=[t, T];
%    x=[x; [x(N,1)-h*x(N,2),x(N,2)+h*x(N,1)]];
%  endif
%  x=[x0; x];
endfunction
