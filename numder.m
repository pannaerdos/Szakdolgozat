function [dy,dy2] = numder(f,h)
%UNTITLED14 Summary of this function goes here
%   Detailed explanation goes here
n=length(f);
x=1:h:length(f);
dy=zeros(1,n);
dy2=zeros(1,n);
dy3=zeros(1,n);
for i=2:h:n-1;
    dy(i)=(f(i+1)-f(i-1))/2*h;
    dy2(i)=(f(i)-f(i-1))/h;
    dy3(i)=(f(i+1)-f(i))/h;
end
dy;
dy2;
dy3;
end

