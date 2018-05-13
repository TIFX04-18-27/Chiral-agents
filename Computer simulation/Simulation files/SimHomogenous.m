function p = SimHomogeneous(N,dt,p0,DT,DR,v,w)
%SimHomogeneous Simulates the path of an active chiral agent in a
%homogeneous environment.
% INPUT ARGUMENTS
%   N  - the number of iterations
%   dt - the time step
%   p0 - the start position of the agent
%   DR - the rotational diffusion coefficient
%   DT - the translational diffusion coefficient
%   v  - the speed of the agent
%   w  - the chirality of the agent
% OUTPUT ARGUMENTS
%   p - the trajectory of the agent

% Initialize the agent
[p,phi,wgn_p,wgn_phi] = InitializeAgent(N,dt,p0,DT,DR);

% Iterate system
for k=2:N
    % Update the agent's state
    [p(k,:),phi] = UpdateAgent(p(k-1,:),phi,wgn_p(k),wgn_phi(k),v,w,dt);
end