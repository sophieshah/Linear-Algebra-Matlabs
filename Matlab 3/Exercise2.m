function [name, ufid, ...
    A1, b1, sol_1_partic, sol_1_matlab, sol_1_cramer, ...
    A2, b2, sol_2_partic, sol_2_matlab, sol_2_cramer, ...
    A3, b3, sol_3_partic, sol_3_matlab, sol_3_cramer] = Exercise2()
    % --- Name & UFID --- %
    name = "Sophia Shah";
    ufid = 60602192;

    % --- Part A (see CramersRule.m) [10 Points] --- %

    % --- Part B [10 Points] --- %
    % (i) m > n
    A1 = randi([-7,7],5,3);
    b1 = randi([-7,7],5,1);

    sol_1_partic = ParticularSolution(A1, b1);
    sol_1_matlab = A1 \ b1;
    sol_1_cramer = CramersRule(A1, b1);

    % (ii) m < n
    A2 = randi([-7,7],3,5);
    b2 = randi([-7,7],3,1);

    sol_2_partic = ParticularSolution(A2, b2);
    sol_2_matlab = A2 \ b2;
    sol_2_cramer = CramersRule(A2, b2);

    % (iii) m = n
    A3 = randi([-7,7],5,5);
    b3 = randi([-7,7],5,1);

    sol_3_partic = ParticularSolution(A3, b3);
    sol_3_matlab = A3 \ b3;
    sol_3_cramer = CramersRule(A3, b3);

    % --- Part C [10 Points] --- %

    % When A is invertible, all 3 methods return a unique solution. This is
    % because Cramer's rule will apply to an invertible matrix, dividing A
    % by b will not give an error, and determining the pivot columns and
    % ranks with the particular solution will also work.

    % When Ax = b is consistent where A is an n x n singular matrix,
    % Only particular solution will work. Cramer's rule won't apply if the
    % matrix is singular, and dividing A by b to solve for x (A\b) will not
    % work.

    % When Ax = b is consistent where A is an m x n (non-square) matrix,
    % nly particular solution will work. Cramer's rule won't apply if the
    % matrix is not square, and dividing A by b to solve for x (A\b) will not
    % work.
end
