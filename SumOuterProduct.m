function s = SumOuterProduct(x)
    X = x*x';
    [n,m] = size(X);
    upper_triangle = (1:n)' <= (1:m);
    s = sum(X(upper_triangle));
end
