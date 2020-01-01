function dy = stencil(f,v)
%UNTITLED Summary of this function goes here
%   v  should be a vector of m elements(or more/or less)
% . ceil(b/2):ceil(n-(b/2))
n=length(f);
m=length(v);
k=(0:(m-1));
B=(reshape(v, m,1).^k)^-1;
b=length(B(2,:));
dy=zeros(n,1);
C=zeros(m,1);
v1=abs(v(1))+1;
vend=v(end);
for i=v1:(n-vend);
    for j=1:m;
        kell=v(j);
        C(j)=f(i+kell);
    end
    c=B(2,:)*C;
    dy(i)=c;
   
end
dy;

end

