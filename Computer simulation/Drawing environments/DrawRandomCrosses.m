function DrawRandomCrosses(c,R,pos,ang)
%drawRandomizedPlus Draws plus signs with random location and rotation. The
%randomization is still periodic, with box of length L, and plus signs with
%locations pos and angles ang. The path of the agent x determines the size
%of the figure.
% INPUT
%   x - path of an agent
%   L - length of large periodic box
%   R - height and width of plus sign
%   pos - matrix with positions of plus signs in box
%   ang - matrix with angles of plus signs in box
% OUTPUT
%   none

% Plotting crosses.
for i = 1:length(pos(:,1))
    DrawCross(c+pos(i,:),R,ang(i));
end