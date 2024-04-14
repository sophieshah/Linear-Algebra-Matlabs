function [name, ufid, ...
    n1, B1, A1, ...
    P1, D1, PDP1, ...
    P1_again, D1_again, PDP_again, ...
    P2, D2, PDP2, P3, D3, PDP3, ...
    A2, P4, D4, verify1_LHS, verify1_RHS, verify2, basis_eigenspace, ...
    A3, P5, D5, dot_A3, ...
    A4, P6, D6] = Exercise1()
    % --- Name & UFID --- %
    name = "Sophia Shah";
    ufid = 60602192;

    rng(60602192, 'twister') % (DO NOT REMOVE)

    % --- Part A [10 Points] --- %
    % vvv GENERATES RANDI MATRIX WITH DISTINCT EIGENVALUES vvv %
    n1 = 4;
    A1 = [];
    B1 = [];
    while length(unique(diag(A1))) ~= n1
        B1 = randi([-7, 7], n1);
        A1 = triu(B1); % Returns the upper-triangular part of A1
    end
    % ^^^ DO NOT MODIFY! ^^^ %

    % The eigenvalues of A1 are -7, 1, 5, -4 because the eigenvalues of the
    % trianglular matrix are the values on the diagonal.

    [P1, D1] = eig(A1); % (UNCOMMENT THIS LINE)

    % P1 is an upper triangle matrix. it is also an invertible matrix.
    % D1 is a diagonal matrix

    PDP1 = P1 * D1 * inv(P1);

    [P1_again, D1_again] = eigvec(A1); % (UNCOMMENT THIS LINE)
    PDP_again = P1_again * D1_again * inv(P1_again);

    % We can conlude that A1 is diagonalizeable
    % since A1 is equal to the value of P1 * D1 * the inverse of P1, as a
    % matrix A is diagonalizable if there is an invertible matrix and
    % diagonal matrix where A=PDP^-1

    % (i) First distinct diagonalization
    P2 = P1; % (DO NOT REMOVE)
    D2 = D1; % (DO NOT REMOVE)

    % MODIFY P2 & D2 HERE

    PDP2 = P2 * D2 * inv(P2);

    % (ii) Second distinct diagonalization
    P3 = P1; % (DO NOT REMOVE)
    D3 = D1; % (DO NOT REMOVE)

    % MODIFY P3 & D3 HERE
    P2 = P2(1, :);
    D2 = D2();
    
    PDP3 = P3 * D3 * inv(P3);

    % --- Part B [10 Points] --- %
    A2 = [2 1 0 0; 0 2 1 0; 0 0 2 1; 0 0 0 2];

    [P4, D4] = eig(A2); % (UNCOMMENT THIS LINE)

    verify1_LHS = A2 * P4;
    verify1_RHS = P4 * D4;
    verify2 = P4 * D4 * inv(P4);

    % Observe: A2 * P4 is equal to P4 * D4. However, A2 is not equal to
    % P1*D1*inv(P1)

    basis_eigenspace = NulBasis(A2 - 2*eye(4));

    % A2 is not diagonalizable because...
    % (i)  A2 is not equal to P1 * D1 * inv(P1). This means that the
    % columns of P are not linearly independent eigenvectors of A2, so the
    % matrix cannot be diagonalizible if there is not n linearly
    % independent eigenvectors.

    % (ii) The dimension of the eigenspace is equal to one, which does not
    % equal the multiplicity of 4 that happens when lambda is 2.

    % --- Part C [10 Points] --- %
    A3 = [5 2; 2 5];

    [P5, D5] = eigvec(A3); % (UNCOMMENT THIS LINE)

    dot_A3 = dot(P5(:, 1), P5(:, 2));

    % The eigenvectors of A2 are orthogonal because the dot product is 0. (FILL IN THE BLANK)

    % Solution: x(t) = 0

    % --- Part D [10 Points] --- %
    A4 = [-8 -12 -6; 2 1 2; 7 12 5];

    [P6, D6] = eigvec(A4); % (UNCOMMENT THIS LINE)

    % A4 is diagonalizable because....

    % Solution: x(t) = (COMPLETE)
end
