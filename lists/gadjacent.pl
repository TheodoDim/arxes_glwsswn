% This was picked by prondo as a tribbute to Gkritzalis Dimitris
% gadjacent(X,Y,L) means elements are symmetrical in the list in terms of their positions

fake_reverse([] , Y,Y).
fake_reverse([X|Xs],Ms,Y):-fake_reverse(Xs , [X|Ms] , Y ).
reversel(X,Y):-fake_reverse(X , [] , Y).



% we use the helper gadj to have both the original list and the reversed side by side
gadjacent(X,Y,L):-reversel(L,T) , gadj(X,Y,L,T).

gadj(X,Y,[X|Ls] , [Y|Ts]).
gadj(X,Y,[L|Ls], [T|Ts]) :- gadj(X,Y,Ls,Ts).