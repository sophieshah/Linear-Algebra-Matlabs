function [x, name, ufid]  = CramersRule(A, b)
    % Purpose: (COMMENT)
    % Input Argument [A]: a mxn coefficient matrix
    % Input Argument [b]: a column vector in R^n
    % Output Argument [x]: a solution to Ax=b (or NaN if A is close to singular)

    % --- Name & UFID --- %
    name = "Sophia Shah";
    ufid = 60602192;

    [m, n] = size(A); % # of rows and columns of A, respectively

    % Use CramersRule3x3.m as a guide to write this new function.
    % Hint: Use a for-loop.

    if(m~=n || abs(det(A)) <= 10^(-8))
        x = NaN;
    else
        x = zeroes(1, n);

        for i= 1:n
            B = A;
            B(:, i) = b;
            x(i) = det(B)/det(A);
        end
        
        x = x';
    end

    
end
