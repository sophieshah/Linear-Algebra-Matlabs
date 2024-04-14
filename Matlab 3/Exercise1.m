function [name, ufid, ...
    A, rref_A, det_A, det_AT, ...
    A1, b1, sol_1_partic, sol_1_matlab, sol_1_cramer, ...
    A2, b2, sol_2_partic, sol_2_matlab, sol_2_cramer, ...
    A3, b3, sol_3_partic, sol_3_matlab, sol_3_cramer] = Exercise1()
    % --- Name & UFID --- %
    name = "Sophia Shah";
    ufid = 60602192;

    % --- Part A [10 Points] --- %
    % (i) Some MATLAB implementation details...

    % vvvvv COMMENT OUT BEFORE SUBMITTING vvvvv %
    %n = randi([2500, 5000]);
    %A = randi([-7,7], n, n);
    %b = randi([-7,7], n, n);

    %tic
    %    A\b;
    %toc;

    %tic
    %    inv(A) * b;
    %toc;
    % ^^^^^ COMMENT OUT BEFORE SUBMITTING ^^^^^ %


    % A\b is faster than inv(A)*b
    % A\b returns the "least squares" solution to the system of equations.
    % It divides matrix A by matrix b solve for Ax=b

    % (ii) Some more practical things...
    A = [1 2 3; -4 -5 -6; 7 8 9];
    rref_A = rref(A);

    % A is not invertible because A doesn't have  apivot in every column
    % and row, so rank(A) is not equal to n so the matrix is not
    % invertible.
    % Therefore, the determinant of A is 0.

    det_A = det(A);
    % disp(det(sym(A)))
    
    AT = A';
    det_AT = det(AT);

    % det(A) = det(A^T) = 0. The determinant of A and the determinant of
    % A^T are the same.
    % If A is not invertible, then neither is A^T. Since det(A)=0, A is not
    % invertible. Because det(A^T)=det(A)=0, A^T is also not invertible.

    % --- Part B [10 Points] --- %
    A1 = [1 1 -2; 1 -2 4; 0 1 -2];
    b1 = [1; -2; 3];

    sol_1_partic = ParticularSolution(A1, b1);
    sol_1_matlab = A1\b1;
    sol_1_cramer = CramersRule3x3(A1, b1);

    % The system is inconsistent, as there is a pivot column in the last column.
    % Because the system is inconsistent, there is not solution for this
    % system.

    % --- Part C [10 Points] --- %
    A2 = [1 1 -2; 1 -2 4; 0 1 -2];
    b2 = [1; -2; 1];

    sol_2_partic = ParticularSolution(A2, b2);
    sol_2_matlab = A2\b2;
    sol_2_cramer = CramersRule3x3(A2, b2);

    % The system is consistent because a solution was found.
    % There are infinitely many solutions to this system. It can be written
    % as [0; 2; 0;]*t + [0; 1; 0]

    % --- Part D [10 Points] --- %
    A3 = [1 1 -2; 1 -2 -2; 0 1 2];
    b3 = [1; -2; 1];

    sol_3_partic = ParticularSolution(A3, b3);
    sol_3_matlab = A3\b3;
    sol_3_cramer = CramersRule3x3(A3, b3);

    % The system is consistent because a solution was found.
    % The solution is [0; 1; 0;]
end

