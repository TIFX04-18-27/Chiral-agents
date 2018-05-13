function DrawCross(c,R,theta)
%DrawPlus Draws a cross with size R in a cell
% INPUT ARGUMENTS
%   c - the center of the cell
%   R - the height and width of the cross
%   theta - the roation of the cross

% Draw cross
X = c(1)+R/2*[-cos(theta) -sin(theta);cos(theta)  sin(theta)];
Y = c(2)+R/2*[-sin(theta)  cos(theta);sin(theta) -cos(theta)];
line(X,Y,'Color',[.5 .5 .5],'LineWidth',2);
