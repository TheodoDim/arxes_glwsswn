% this code as presented uses some special prolog thingies, it doesnt work idk

countl(0,[0]).
countl(X,[X|Xs]):-X>0,M is X-1,countl(M,Xs).