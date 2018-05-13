function [count, targets] = TargetsCaught(p, rho, r)
%TargetsCaught Calculates the number of targets caught by an agent with trajectory x and
%radius r, by spawning targets according to density rho.
% INPUT ARGUMENTS
%   p - the trajectory of the agent
%   rho - the density of targets
%   r - the catch radius of the agent
% OUTPUT ARGUMENTS
%   count - the number of targets caught
%   targets - coordinates of all spawned targets

% Find max and min of x and y
Min = min(p)-r;
Max = max(p)+r;

% Calculate number of targets
numTargets = round(rho * prod(Max-Min));

% Spawn coins
targets = [unifrnd(Min(1),Max(1),numTargets,1) unifrnd(Min(2),Max(2),numTargets,1)];

% Initialize count vector
count = 0;

% Find relevant targets and positions in trajectory, reached by square
[LIC,LocX] = ismembertol(targets,p,r,'ByRows',true,'DataScale', [1 1],'OutputAllIndices',true);

% From relevant targets, find thosereached by circle
for i = 1 : numTargets
    if LIC(i)
        for j = LocX{i}'
            if norm(targets(i,:)-p(j,:)) < r
                count = count+1;
                break;
            end
        end
    end
end