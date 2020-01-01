function [dy] = fsten(f,h)
%5-point stencil kiszámítása
%   Detailed explanation goes here
%f(x-2h)
a=f(1:end-4*h);
%f(x-h)
b=f(1+h:end-3*h)
%f(x)=f(i+2h:end-2)
%f(x+h)
c=f(1+3*h:end-1*h);
%f(x+2h)
d=f(1+4*h:end);
dy=(-d+8*c-8*b+a)/(12*h);

end
