function [x] = SimComplexPeriodic(N,dt,p0,DT,DR,v,w,P,BcObstacle)
%simPeriodicPlus Simulates the path of an active chiral agent
%inside inside periodic box with length L, with Plus sign structure with
%line lengths R.
% INPUT ARGUMENTS
%   N  - the number of iterations
%   dt - the time step
%   p0 - the start position of the agent
%   DT - the translational diffusion coefficient
%   DR - the rotational diffusion coefficient
%   v  - the speed of the agent
%   w  - the chirality of the agent
%   P  - the period of the cell
%   BcObstacle - a function describing a boundary condition
% OUTPUT ARGUMENTS
%   p - the trajectory of the agent

% Initialize the agent
[p,phi,wgn_p,wgn_phi] = InitializeAgent(N,dt,p0,DT,DR);

% Iterate system
for k=2:N
    % Update the agent's state
    [p(k,:),phi] = UpdateAgent(p(k-1,:),phi,wgn_p(k),wgn_phi(k),v,w,dt);
    
    % Check obstacle boundary conditions
    p(k,:) = BcObstacle(p(k,:),p(k-1,:));
    
    % Check periodic boundary conditions
    p(k,:) = BcPeriodic(p(k,:),P);
end

% Unwrap P-periodic trajectory matrix
x = MyUnwrap(p,P);