% this code as presented uses some special prolog thingies

countl(0,[0]).
countl(X,[X|Xs]):-N>0,M is N-1,countl(N,Xs).