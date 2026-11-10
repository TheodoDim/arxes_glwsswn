member(X, [X|_]).
member(X, [_|Z]):- member(X,Z).


equal_list([],[]).
equal_list([X|Y] , [X|Z]):- equal_list(Y,Z).