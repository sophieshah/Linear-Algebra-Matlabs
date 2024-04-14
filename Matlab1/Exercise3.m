function [name, ufid, ...
          bA, A1, Ab1, sol1, A2, Ab2, sol2, A3, Ab3, sol3, ...
          example_A1, example_b1, example_type1, ...
          bC, A4, Ab4, sol4, A5, Ab5, sol5, A6, Ab6, sol6, ...
          example_A2, example_b2, example_type2, ...
          example_A3, example_b3, example_type3] = Exercise3()
    % --- Name & UFID --- %
    name = "Sophia Shah";
    ufid = 60602192;

    % --- Part A: Underdetermined Systems [10 Points] --- %
    bA = randi([-7,7],2,1);
    
    A1 = randi([-7,7],2,3);
    Ab1 = [A1 bA];
    [~, n] = size(A1); % (UNCOMMENT LINE)
    sol1 = LS_solution(n, A1, Ab1);

    A2 = randi([-7,7],2,3);
    Ab2 = [A2 bA];
    [~, n] = size(A2); % (UNCOMMENT LINE)
    sol2 = LS_solution(n, A2, Ab2);

    A3 = randi([-7,7],2,3);
    Ab3 =  [A3 bA];
    [~, n] = size(A3); % (UNCOMMENT LINE)
    sol3 = LS_solution(n, A3, Ab3);
    
    % --- Part B: Explanation of Part A [10 Points] --- %

    % Most undetermined systems would have infinitely many solutions
    % because there is likely to end up with a row with no pivots, meaning
    % there is a free variable. In this case, there would be infinitely
    % many solutions. There can also be no solution if there is a row with
    % the last column being a pivot column such as [0,0,...,1], the last
    % column being a pivot column would result in no solution.

    % (LEAVE THE FOLLOWING AS NaN OR PROVIDE AN EXAMPLE IF POSSIBLE)
    example_A1 = NaN;
    example_b1 = NaN;
    example_type1 = NaN; % (REMOVE LINE IF EXAMPLE)
    %[~, n] = size(example_A1); % (UNCOMMENT IF EXAMPLE)
    %example_type1 = LS_solution(n, example_A1, [example_A1, example_b1]); % (UNCOMMENT IF EXAMPLE)
   
    % --- Part C: Overdetermined Systems [10 Points] --- %
    bC = randi([-7,7],3,1);

    A4 = randi([-7,7],3,2);
    Ab4 = [A4 bC];
    [~, n] = size(A4); % (UNCOMMENT LINE)
    sol4 = LS_solution(n, A4, Ab4);

     A5 = randi([-7,7],3,2);
    Ab5 = [A5 bC];
    [~, n] = size(A5); % (UNCOMMENT LINE)
    sol5 = LS_solution(n, A5, Ab5);

     A6 = randi([-7,7],3,2);
    Ab6 = [A6 bC];
    [~, n] = size(A6); % (UNCOMMENT LINE)
    sol6 = LS_solution(n, A6, Ab6);
    
    % --- Part D: Explanation of Part C [10 Points] --- %
    
    % An overdetermined solution usually has no solution, as the last 
    % column in the augmented matrix ends up being a pivot column such 
    % as [0,0,...,1].

    % (PROVIDE AN EXAMPLE WITH ONE SOLUTION BELOW)
    % example from https://eng.libretexts.org/Bookshelves/Mechanical_Engineering/Math_Numerics_and_Programming_(for_Mechanical_Engineers)/03%3A_Unit_III_-_Linear_Algebra_1_-_Matrices_Least_Squares_and_Regression/17%3A_Least_Squares/17.02%3A_Overdetermined_Systems
    example_A2 = [1 2; 2 1; 2 -3];
    example_b2 = [0; 2; -4];
    [~, n] = size(example_A2); % (UNCOMMENT)
    example_type2 = LS_solution(n, example_A2, [example_A2, example_b2]); % (UNCOMMENT)

    % (PROVIDE AN EXAMPLE WITH INFINITELY MANY SOLUTIONS BELOW)
    example_A3 = NaN;
    example_b3 = NaN;
    example_type3 = NaN; % (REMOVE LINE)
    %[~, n] = size(example_A3); % (UNCOMMENT IF EXAMPLE)
    %example_type3 = LS_solution(n, example_A3, [example_A3, example_b3]); % (UNCOMMENT)
end
