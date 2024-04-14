function [y_hat, z, name, ufid] = proj(y, u)
    % Purpose: (COMMENT)
    % Input Argument [y]: initial vector y
    % Input Argument [u]: intitial vector u
    % Output Argument [y_hat]: the projection of y onto u
    % Output Argument [z]: the component of y othogonal to u

    % --- Name & UFID --- %
    name = "Sophia Shah";
    ufid = 60602192;

    y_hat = (dot(y, u) / norm(u)^2)*u;
    z = y / u;
end
