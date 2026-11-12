% appendl takes two lists and returns the concatenation of the 2-> 1,2,3 , 4,5,6 -> 1,2,3,4,5,6


appendl([],[],[]).
appendl([] , [Y|Ys] , [Y|Zs]):-appendl([],Ys,Zs).
appendl([X|Xs],Y,[X|Zs]) :- appendl(Xs,Y,Zs).