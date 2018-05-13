function p = MyUnwrap(p,P)
%MyUnwrap Unwraps matrix p columnwise by period P
% INPUT ARGUMENT
%   p - the matrix to be unwrapped
%   P - the period with which to unwrap
% OUTPUT ARGUMENT
%   p - the unwrapped matrix
p = P/(2*pi) * unwrap(2*pi/P * p);