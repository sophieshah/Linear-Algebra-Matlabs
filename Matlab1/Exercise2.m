function [name, ufid, B, pivcols, compare, m, n, solution_type] = Exercise2(A, b)
    % --- Name & UFID --- %
    name = "Sophia Shah";
    ufid = 60602192;

    % --- Part A [10 Points] --- %
    [B, pivcols] = rref([A b]); % (WRITE COMMAND BEFORE SEMI-COLON)
    % B contains reduced row echelon form of A, pivcols contains pivot columns of A

    % The system is inconsistent because the last row contains a pivot column

    % --- Part B [10 Points] --- %
    compare = rank_comp(A, rref([A b]));
    % The Rouché-Capelli Theorem states that Ax=b if and only if the rank 
    % of A is equal to the rank of the Augmented matrix of A and b
    
    % rank(A) only has two pivot columns, while rank([A b]) has three,
    % therefore Ax=b is not consistent
   
    % --- Part C [10 Points] --- %
    [m, n] = size(A); % Stores row size of matrix A in m and column size of
    % matrix A in n
    solution_type = LS_solution(n, A, [A b]); % Displays how many solutions
    %Ax = b have (unique or
    % infinitely)
end
