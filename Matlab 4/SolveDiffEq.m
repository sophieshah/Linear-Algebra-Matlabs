function [x, name, ufid] = SolveDiffEq(A, x0, max_k)
    % Purpose: (COMMENT)
    % Input Argument [A]: Initial matrix A
    % Input Argument [x0]: initial probability vector x0
    % Output Argument [x]: the limit x sub k as k goes to infinity

    % --- Name & UFID --- %
    name = "Sophia Shah";
    ufid = 60602192;

    n = length(x0);

    tol = 10e-8; % Absolute Tolerance = 0.000 000 01
    if nargin < 3
        max_k = 10e4; % Default Max # of Iterations = 10,000
    end

    k = 0;
    x = x0;
    x_last = zeros(n, 1);

    % While the difference between the distance between the last and the
    % current vector is greater than the set tolerance and we haven't
    % reached the max # of iterations, ...
    while norm(x - x_last) > tol && k < max_k
        % Perform the difference equation (enter code below)
        
       x_last = x;
       x = A*x;
    end
end
