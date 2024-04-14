function [name, ufid, ...
    A1, A2, A3, A4, ...
    A, B, ABBA, C, AC, CA, AI, IA, inverse_A, ...
    D, inverse_D, rref_something, rref_inverse_D, inv_inv_D, ...
    E, inverse_DE, inv_D_inv_E, inv_E_inv_D, ...
    inv_DT, inv_D_T] = Exercise3(n)
    % --- Name & UFID --- %
    name = "First Last";
    ufid = 12345678;

    % --- Part A [10 Points] --- %
    % For-Loop (i)
    A1 = zeros(n);
    for i = 1:n
        for j = 1:n
            A1(i,j) = i + j;
        end
    end

    % For-Loop (ii)
    A2 = zeros(n);
    for i = 1:n
        for j = i:n
            A2(i,j) = i + j;
            A2(j,i) = A2(i,j);
        end
    end

    % (COMMENT; SAME OUTPUT?)

    % For-Loop (i) = (EXPRESSION IN TERMS OF n) FLOPs
    % For-Loop (ii) = (EXPRESSION IN TERMS OF n) FLOPs

    % (COMPARE; WHICH REQUIRES LESS FLOPs?)

    % --- Part B [10 Points] --- %
    % While-Loop (i)
    A3 = zeros(n); % (DO NOT MODIFY THIS LINE)

    % (REWRITE FOR-LOOP (i) USING WHILE LOOPS HERE)

    % While-Loop (ii)
    A4 = zeros(n); % (DO NOT MODIFY THIS LINE)

    % (REWRITE FOR-LOOP (ii) USING WHILE LOOPS HERE)

    % --- Part C [10 Points] --- %
    A = A1; % (DO NOT MODIFY THIS LINE)
    B = NaN;

    ABBA = NaN;
    % (EXPLAIN WHY EITHER A*B OR B*A DOES NOT WORK / IS UNDEFINED)

    C = NaN;

    AC = NaN;
    CA = NaN;
    % (OBSERVE & EXPLAIN WHY EITHER EQUAL OR NOT EQUAL USING LINEAR ALGEBRA)
    % Aside: Matrix multiplication is function composition.

    AI = NaN;
    IA = NaN;
    % (OBSERVE & EXPLAIN WHY EITHER EQUAL OR NOT EQUAL USING LINEAR ALGEBRA)
    % Hint: I_n, the identity matrix, has some special property.

    % --- Part D [10 Points] --- %
    inverse_A = NaN;
    % (OBSERVE WARNING & CONCLUDE INVERTIBILITY OF A)

    D = NaN;
    inverse_D = NaN;

    % Complete using *only* two lines and using the rref function (cannot use
    % inv function)!
    rref_something = NaN;
    rref_inverse_D = NaN;

    inv_inv_D = NaN;
    % (OBSERVE & GENERALIZE)

    E = NaN;

    inverse_DE = NaN;
    inv_D_inv_E = NaN;
    inv_E_inv_D = NaN;
    % The inverse of the product of two invertible matrices D and C is
    % equal to (FINISH GENERALIZATION)

    inv_DT = NaN;
    inv_D_T = NaN;
    % The inverse of the transpose of an invertible matrix D is equal to
    % (FINISH GENERALIZATION)
end
