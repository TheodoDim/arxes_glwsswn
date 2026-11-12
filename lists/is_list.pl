is_list([]).
is_list([_|Y]):-is_list(Y).

% alternative for equal_list

%equal_list(X,X):-is_list(X).

member(X, [X|_]).
member(X, [_|Z]):- member(X,Z).

% alternative for equal_list

equal_list([X|Y] , [X|Z]) :- member(Y,[Z]).