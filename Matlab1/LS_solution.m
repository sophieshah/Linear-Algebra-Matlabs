function [system_type, name, ufid] = LS_solution(n, A, Ab)
    % --- Name & UFID --- %
    name = "First Last";
    ufid = 12345678;
    
    % (PURPOSE OF FUNCTION)
    % n = number of variables in system of equations
    % A = first matrix A
    % Ab = augmented matrix of A and b

    inc = "Inconsistent";
    con_with_one_sol = "Consistent with One Solution";
    con_with_inf_sols = "Consistent with Infinite Solutions";
     
    % Add your code below
    if(rank(A)==rank(Ab) && rank(A)<n)
        system_type = con_with_inf_sols;
    elseif(rank(A)==rank(Ab) && rank(A)==n)
        system_type = con_with_one_sol;
    
    else
        system_type = inc;

end
