function [y, dy] = fit3(f, alpha)

%% setting up coefficients
n=max(size(f))-2;
f = reshape(f, [], 1);

x0=[mean(f); 0; zeros(2*n,1)];
S1=[1,zeros(1,2*n);ones(n,1),kron(tril(ones(n)),[1,-1])];
S2 = tril(ones(n+2))*blkdiag(1, S1);
q_r=[0; 0; ones(2*n,1)];

H=S2'*S2;
q=-S2'*f;

% Octave
% x=qp(x0,(1-alpha)*H, (1-alpha)*q + alpha*q_r, [],[],[-Inf; zeros(2*n,1)],[]);

% MatLab
x=quadprog((1-alpha)*H, (1-alpha)*q + alpha*q_r, [],[],[],[], [-Inf; -Inf; zeros(2*n,1)],[], x0);

y = S2*x;
dy = S1*x(2:end);

end
