function [p,phi,wgn_p,wgn_phi] = InitializeAgent(N,dt,p0,DT,DR)
%InitializeAgent Preallocates memory for the trajectory of the agent,
%randomizes a starting angle and creates white noise matrices

% Preallocate memory
p = zeros(N,2);

% Initial conditions
p(1,:) = p0;
phi = 2*pi*rand;

% Create white noise matrices
wgn_p = normrnd(0,sqrt(2*DT*dt),N,2);
wgn_phi = normrnd(0,sqrt(2*DR*dt),N,1);