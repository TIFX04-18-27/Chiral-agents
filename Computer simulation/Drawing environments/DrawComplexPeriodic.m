function DrawComplexPeriodic(p,P,DrawObstacle)
%DrawObstacles Draws plus signs with lines of length R in each cell with size L
%over a rectangle inscribing the path x.
% INPUT ARGUMENTS
%   p - the trajectory of an agent
%   P - the period of the cell
%   DrawObstacle - a function describing the drawing of an obstacle

% Determe the size of the plot
Min = floor(min(p)/P - .5);
Max = ceil(max(p)/P + .5);

for x = Min(1) : Max(1)
    for y = Min(2) : Max(2)
        % Draw an obstacle in a cell
        DrawObstacle(P*[x y]) 
    end
end