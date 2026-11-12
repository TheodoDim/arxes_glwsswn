appendl([],[],[]).
appendl([] , [Y|Ys] , [Y|Zs]):-appendl([],Ys,Zs).
appendl([X|Xs],Y,[X|Zs]) :- appendl(Xs,Y,Zs).

reversel([],[]).
reversel([X|Xs],Y):-reversel(Xs,Rs), appendl(Rs,[X],Y).

last(L,X):-reverse(L,[X|_]).