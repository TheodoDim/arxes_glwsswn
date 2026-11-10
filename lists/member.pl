member(X, [X|_]).
member(X, [_|Z]):- member(X,Z).