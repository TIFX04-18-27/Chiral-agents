function DrawSerifCross(c,R,r)
%DrawSerifCross Draws a cross with size R and serifs with length r in a cell.
% INPUT ARGUMENTS
%   c - the center of the cell
%   R - the width and height of the cross
%   r - the length of the serifs

% Plot the main cross.
DrawCross(c,R,0);

% Plotting the serifs.
X = c(1) + [-r/2 -r/2 -R/2 +R/2;+r/2 +r/2 -R/2 +R/2];
Y = c(2) + [-R/2 +R/2 -r/2 -r/2;-R/2 +R/2 +r/2 +r/2];
line(X,Y,'Color',[.5 .5 .5],'LineWidth',2);