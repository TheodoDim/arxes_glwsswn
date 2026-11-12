% adjacent(X,Y,L) returns true if X and Y are neighbours in the list L for example adjacent(1,2,[0,1,2,3])


prefixl([],L).
prefixl([X|Y],[X|Z]):-prefixl(Y,Z).

sublist(X,Y):- prefixl(X,Y).
sublist(X , [Y|Ys]):- sublist(X,Ys).

adjacent(X,Y,L):-sublist([X,Y], L).
