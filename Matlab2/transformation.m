function [transform_type, name, ufid] = transformation(A)
    % Purpose: (COMMENT)
    % Input Argument [A]: (COMMENT)
    % Output Argument [transform_type]: (COMMENT)

    % --- Name & UFID --- %
    name = "First Last";
    ufid = 12345678;

    [m, n] = size(A); % # of rows and columns of A, respectively

    both = "Onto and one-to-one";
    onto = "Onto but not one-to-one";
    one_to_one = "One-to-one but not onto";
    neither = "Neither onto nor one-to-one";

    rank_A = rank(A);
    % Use dependence.m as a guide to write this new function. Enter code below.

end
