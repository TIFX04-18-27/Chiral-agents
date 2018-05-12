function x = SimHomogeneous(N,DR,DT,dt,p0,v,w)
%SimHomogeneous Simulates the path of an active chiral agent in a 
%homogeneous environment.
% INPUT ARGUMENTS
%   N  - the number of iterations
%   DR - the rotational diffusion coefficient
%   DT - the translational diffusion coefficient
%   dt - the time step
%   x0 - the start position of the agent
%   v  - the speed of the agent
%   w  - the chirality of the agent
% OUTPUT ARGUMENTS
%   p - the trajectory of the agent

% Preallocate memory
p = zeros(N,2);

% Initial conditions
p(1,:) = p0;
phi = 2*pi*rand;

% Create white noise matrices
p_rnd = normrnd(0,sqrt(2*DT*dt),N,2);
phi_rnd = normrnd(0,sqrt(2*DR*dt),N,1);

% Pre-multiply constants
V = v*dt;
W = w*dt;

% Iterate system
for k=2:N
    % Calculate new position
    p(k,:) = p(k-1,:) + V*[cos(phi) sin(phi)] + p_rnd(k,:);
    
    % Calculate new angle
    phi = phi + W + phi_rnd(k);
end
