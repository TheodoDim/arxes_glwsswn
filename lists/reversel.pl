% reversel([1,2,3] , [3,2,1]) is true


% first solution with an intermediate buffer
%fake_reverse([] , Y,Y).
%fake_reverse([X|Xs],Ms,Y):-fake_reverse(Xs , [X|Ms] , Y ).
%reversel(X,Y):-fake_reverse(X , [] , Y).

% second solution

appendl([],[],[]).
appendl([] , [Y|Ys] , [Y|Zs]):-appendl([],Ys,Zs).
appendl([X|Xs],Y,[X|Zs]) :- appendl(Xs,Y,Zs).

reversel([],[]).
reversel([X|Xs],Y):-reversel(Xs,Rs), appendl(Rs,[X],Y).