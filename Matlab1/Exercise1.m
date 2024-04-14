function [name, ufid, ...
          A, b, c, D, x1, x2, x3, aug, ...
          x4, x5, x6, x7, x8, ...
          F1, F2, E, m, n, E1, E2] = Exercise1()
    % --- Name & UFID --- %
    name = "Sophia Shah";
    ufid = 60602192;

    % --- Part A [10 Points] --- %
    A = [1 2 3; -4 -5 -6; 7 8 9];
    b = [1;2;3];
    c = [-1 1 -1];
    D = [0 1 2 3 4; 1 2 3 4 0; 2 3 4 0 1];
    x1 =  A(2,:); % 2nd row of matrix A
    x2 = D(:,4); % 4th column of matrix D
    x3 = [A b]; % augmented matrix of A and b
    aug = [A; c]; % augmented matrix of A and c

    % --- Part B [10 Points] --- %
    x4 = eye(8); % returns 8x8 identity matrix in reduced row ehcelon form
    x5 = zeros(6,3); % returns 6x3 matrix of zeroes
    x6 = zeros(5); % returns 5x5 matrix of zeroes
    x7 = ones(3,5); % returns 3x5 matrix of 1s
    x8 = diag(c); % creates square diagonal matrix with elements from c as the pivots

    % --- Part C [10 Points] --- %
    F1 = randi([-7,7],3,7); % 3x7 matrix of random numbers between -7 and 7

    F2 = F1;    % (DO NOT REMOVE) Copy array
    F2(:, [3 6]) = F1(:, [6 3]); % swap the 3rd and 6th rows of F2 with the 6th and 3rd rows of F1

    E = [A F2]; % augmented matrix of A and F2
    
    [m, n] = size(E); % m is the number of rows in E and n is the number of columns in E
    
    E1 = E(:, [3 7]); % E1 contains rows 3 and 7 of matrix E
    E2 = E(:, 3:7); % E2 contains rows 3-7 of matrix E
end
