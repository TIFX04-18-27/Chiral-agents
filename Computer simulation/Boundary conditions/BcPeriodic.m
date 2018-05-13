function p = BcPeriodic(p, P)
%BoundaryPeriodic If agents position p is outside cell of length P return move it 
%periodically to the other side of the cell.
% INPUT ARGUMENTS
%   p - the position of the agent
%   P - the period of the cell
% OUTSIDE
%   p -  the new position of the agent

% Check if agent has left the cell in x-direction
if abs(p(1))>P/2
    p(1) = sign(p(1)) * (abs(p(1)) - P);
end

% Check if agent has left the cell in y-direction
if abs(p(2))>P/2
    p(2) = sign(p(2)) * (abs(p(2)) - P);
end