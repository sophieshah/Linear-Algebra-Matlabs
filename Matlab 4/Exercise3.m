function [name, ufid, ...
    u1, u2, v1, v2, v3, ...
    u1_dot_v1, v1_dot_u1, ...
    norm_u1, u1_dot_u1, norm_v1, v1_dot_v1, ...
    LHS1, RHS1, LHS2, RHS2, LHS3, RHS3, ...
    y1, z1, verify_sum1, verify_orthogonal1, ...
    y2, z2, verify_sum2] = Exercise3()
    % --- Name & UFID --- %
    name = "Sophia Shah";
    ufid = 60602192;

    % --- Part A [10 Points] --- %
    u1 = [1 2 -1 3];
    u2 = [3 -3 2 -2];

    v1 = [2 -1 3 -1];
    v2 = [-6 6 -4 4];
    v3 = [6 -6 4 -4];

    % (i) u1  v1 and v1  u1
    u1_dot_v1 = dot(u1, v1);
    v1_dot_u1 = dot(v1, u1);
    % Property: The dot product/inner products is -6. (FILL IN THE BLANK)

    % (ii) ||u1||, u1  u1 and ||v1||, v1  v1
    norm_u1 = norm(u1);
    u1_dot_u1 = dot(u1, u1);

    norm_v1 = norm(v1);
    v1_dot_v1 = dot(v1, v1);

    % Relation Between Inner Product & Norm: the inner products of u1->u1 and
    % v1->v1 are the same. The norms of u1 and v1 are the same as well.

    % (iii) Verify Cauchy-Schwarz Inequality (|u  v| <= ||u|| * ||v||)
    % => u1 & v1
    LHS1 = abs(dot(u1, v1));
    RHS1 = norm(u1) * norm(v1);
    % Observe: (IS LHS1 <= RHS1?) Yes, LHS1 is less than RHS1

    % => u2 & v2
    LHS2 = abs(dot(u2, v2));
    RHS2 = norm(u2) * norm(v2);
    % Observe: (IS LHS2 <= RHS2?) Yes LHS2 and RHS2 are equal to each other

    % => u2 & v3
    LHS3 = abs(dot(u2, v3));
    RHS3 = norm(u2) * norm(v3);
    % Observe: (IS LHS3 <= RHS3?) Yes, LHS3 is equal to RHS3

    % The Cauchy-Schwarz Inequality is an equality when u1 dot v1 should be
    % less than or equal to the norm of u1 * the norm of v1. This
    % inequality should ve the same for u2 and v2. Finally, the dot of u2
    % and v3 should be equal to the norm of u2 and v3 becuse they are
    % parallel to each other. "=" holds for the Cauchy-Schwarz inequality 
    % when two vectors are parallel. 

    % --- Part B (see proj.m) [10 Points] --- %

    % --- Part C [10 Points] --- %
    % (i) v1 as a linear combination of u1 and u1's orthogonal complement
   
    [y1, z1] = proj(v1, u1); % (UNCOMMENT THIS LINE)

    verify_sum1 = isequal(y1, z1);
    verify_orthogonal1 = dot(y1, u1) < 10e-8;

    % (ii) v2 as a linear combination of u2 and u2's orthogonal complement

    [y2, z2] = proj(v2, u2); % (UNCOMMENT THIS LINE)

    verify_sum2 = isequal(y2, u2);

    % z2 is the zero vector because y is parallel to y_hat. This is because
    % the distance from y to y_hat, z, is 0, they are both parallel and z
    % will be the zero vector.
end
