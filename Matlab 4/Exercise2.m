function [name, ufid, ...
    A, x0, x1, x2, ...
    sol1, P, D, C1, sol2, ...
    x0_another, sol3, C2, sol4] = Exercise2()
    % --- Name & UFID --- %
    name = "Sophia Shah";
    ufid = 60602192;

    % --- Part A [10 Points] --- %
    A = [0.8 0.2 0.1; 0.1 0.7 0.3; 0.1 0.1 0.6];
    x0 = [0.7; 0.2; 0.1];

    x1 = A * x0;
    x2 = A * x1;

    % --- Part B (see SolveDiffEq.m) [10 Points] --- %

    % --- Part C [10 Points] --- %
    % Method 1: Call SolveDiffEq(...)
    sol1 = SolveDiffEq(A, x0);

    % Method 2: Diagonalization (of the Transformation Matrix)
  
    [P, D] = eigvec(A); % (UNCOMMENT THIS LINE)

    C1 = rref([P x0]);

    sol2 = C1(:, end);
    % x0 will be equal to the values of C1 multiplied by the columns of P. 
    % The general solution will be the values of C1 * x^k * the columns of P.
    % Observe: Yes, they do produce the same result
    % Conclude: In the long run we expect two of the eigenvectors to go to
    % 0. Therefore only one is left and when it is multiplied by P it gives
    % the same solution.  In the long run, we expect  45% of those surveyed 
    % will drive cars, 35% minivans, and 20% suv.

    % --- Part D [10 Points] --- %
    x0_another = [0.5; 0.2; 0.3];

    % Method 1: Call SolveDiffEq(...)
    sol3 = SolveDiffEq(A, x0_another);

    % Method 2: Diagonalization (of the Transformation Matrix)
    C2 = rref([P x0_another]);

    sol4 = C2(:, end);

    % Comparision: When C2 is multiplied by x^k when k goes to infinity and
    % multiplied by P then the results are the same.
    % Theoreom: Every stochastic matrix A will have a unique probability
    % vector p that satisfies A*P = p. The probability vector p will be
    % called the steady state vector.
    % Conclusion: In the long run we expect 45% cars, 35% vans, and 20%
    % suvs.
end
