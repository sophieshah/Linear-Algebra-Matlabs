function [name, ufid, ...
    N1, B1, pivcols1, C1, R1, ...
    N2, B2, pivcols2, C2, R2, ...
    N3, B3, pivcols3, C3, R3, ...
    A4, N4, B4, pivcols4, C4, R4, ...
    rank_A1, rank_A2, rank_A3, rank_A4] = Exercise3(A1, A2, A3)
    % --- Name & UFID --- %
    name = "Sophia Shah";
    ufid = 60602192;

    % --- Part A [10 Points] --- %
    % (i) Compute a basis for the nullspace, columnspace, and rowspace of A1.
    N1 = null(A1);

   
    [B1, pivcols1] = rref(A1); % (UNCOMMENT)
    C1 = A1(:,pivcols1);

    R1 = B1(1:rank(A1),:);

    % --- Part B [10 Points] --- %
    % (ii) Compute a basis for the nullspace, columnspace, and rowspace of A2.
    N2 = NaN;

    B2 = NaN; % (REMOVE LINE)
    pivcols2 = NaN; % (REMOVE LINE)
    % [B2, pivcols2] = rref(A2); % (UNCOMMENT)
    C2 = NaN;

    R2 = NaN;

    % (iii) Compute a basis for the nullspace, columnspace, and rowspace of A3.
    N3 = NaN;

    B3 = NaN; % (REMOVE LINE)
    pivcols3 = NaN; % (REMOVE LINE)
    % [B3, pivcols3] = rref(A3); % (UNCOMMENT)
    C3 = NaN;

    R3 = NaN;

    % (iv) Compute a basis for the nullspace, columnspace, and rowspace of A4.
    A4 = NaN;

    N4 = NaN;

    B4 = NaN; % (REMOVE LINE)
    pivcols4 = NaN; % (REMOVE LINE)
    % [B4, pivcols4] = rref(A4); % (UNCOMMENT)
    C4 = NaN;

    R4 = NaN;

    % (WHAT DOES THE *NULLSPACE* OF A4 LOOK LIKE GEOMETRICALLY?)
    % (WHAT DOES THE *COLUMNSPACE* OF A4 LOOK LIKE GEOMETRICALLY?)

    % --- Part C [10 Points] --- %
    % Verify the Rank Theorem for A1, A2, A3, & A4.
    rank_A1 = NaN;
    %   i) dim(Col A1) = dim(Row A1) = ?
    %  ii) rank(A1) + dim(Nul A1) = ? + ? = ? = n

    rank_A2 = NaN;
    %   i) dim(Col A2) = dim(Row A2) = ?
    %  ii) rank(A2) + dim(Nul A2) = ? + ? = ? = n

    rank_A3 = NaN;
    %   i) dim(Col A3) = dim(Row A3) = ?
    %  ii) rank(A3) + dim(Nul A3) = ? + ? = ? = n

    rank_A4 = NaN;
    %   i) dim(Col A4) = dim(Row A4) = ?
    %  ii) rank(A4) + dim(Nul A4) = ? + ? = ? = n

    % [EC, +5 pts] Consider the case that you have found 3 linearly
    % independent solutions to the system Ax = 0 where A is an 20 x 23
    % coeffiecient matrix. Also, these solutions can construct every other
    % possible solution to the system by forming some linear combination
    % of the set of them.
    %
    % (a) What is dim Nul A? What about dim Col A?
    %
    %     (ENTER HERE)
    %
    % (b) Can you be certain that every non-homogenous system Ax = b has
    %     a solution? Why or why not (provide valid reasoning/proof)?
    %
    %     (ENTER HERE)
end
