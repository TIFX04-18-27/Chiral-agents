function [p,phi] = UpdateAgent(p,phi,p_wgn,phi_wgn,v,w,dt)
%UpdateAgent Updates the position and orientation of an agent
% INPUT ARGUMENTS
%   p - the position of the agent 
%   phi - the orientation of the agent
%   wgn_p - the translational white noise
%   wgn_phi - the rotational whit noise
%   v - the speed of the agent
%   w - the chirality of the agent
%   dt - the time step
% OUTPUT ARGUMENTS
%   p - the new position of the agent
%   phi - the new orientation of the agent

% Calculate new position
p = p + v*dt*[cos(phi) sin(phi)] + p_wgn;

% Calculate new angle
phi = phi + w*dt + phi_wgn;