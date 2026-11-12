%delete(L, X , Y) deletes the element X from the list in all of its occurences in L and gives as a result list Y
% the solution without the X\=A is party right but is vulnerable to backtracking

deletel([],X,[]).
deletel([X|Ls] , X , Y):-deletel(Ls,X,Y).
deletel([A|Ls] , X, [A|Ys]):-X\=A,deletel(Ls,X,Ys).