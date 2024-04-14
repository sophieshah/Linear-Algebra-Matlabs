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
    n = randi([2500, 5000]);
    A = randi([-7,7], 3, 3);
    b = randi([-7,7], 3, 3);

    tic
        A\b;
    toc;

    tic
        inv(A) * b;
    toc;
    % ^^^^^ COMMENT OUT BEFORE SUBMITTING ^^^^^ %

    % (COMPARE BOTH & NOTE WHICH ONE IS FASTER & FIND OUT WHAT A\b ACTUALLY DOES)

    % (ii) Some more practical things...
    A = NaN;
    rref_A = NaN;

    % (CONCLUDE INVERTIBILITY OF A WITH VALID REASONING)
    % Therefore, the determinant of A is (ENTER HERE).

    det_A = NaN;
    % disp(det(sym(A))) % (COMMENT OUT BEFORE SUBMISSION!)

    det_AT = NaN;

    % (DETERMINE RELATION BETWEEN det(A) AND det(A^T))
    % (WHAT CAN YOU SAY ABOUT THE INVERIBILITY OF A^T WHEN A IS NOT INVERTIBLE?)

    % --- Part B [10 Points] --- %
    A1 = NaN;
    b1 = NaN;

    sol_1_partic = NaN;
    sol_1_matlab = NaN;
    sol_1_cramer = NaN;

    % (IS THE SYSTEM CONSISTENT & PROVIDE REASONING)
    % (DETERMINE ALL SOLUTIONS OF THE SYSTEM)

    % --- Part C [10 Points] --- %
    A2 = NaN;
    b2 = NaN;

    sol_2_partic = NaN;
    sol_2_matlab = NaN;
    sol_2_cramer = NaN;

    % (IS THE SYSTEM CONSISTENT & PROVIDE REASONING)
    % (DETERMINE ALL SOLUTIONS OF THE SYSTEM)

    % --- Part D [10 Points] --- %
    A3 = NaN;
    b3 = NaN;

    sol_3_partic = NaN;
    sol_3_matlab = NaN;
    sol_3_cramer = NaN;

    % (IS THE SYSTEM CONSISTENT & PROVIDE REASONING)
    % (DETERMINE ALL SOLUTIONS OF THE SYSTEM)
end

