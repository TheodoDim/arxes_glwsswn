num(0).
num(s(X)):-num(X).

times(0,Y,0).


times(s(X), Y , Z) :- plus(Y,K,Z),times(X,Y,K).
%times(s(X), Y , Z) :- times(X,Y,K) , plus(Y,K,Z).

% These 2 have a subtle difference please check it.

%When called with times(s(s(0)),s(0),K). neither version falls into infinite loop even though the first tries to calculate plus(s(0),X,Y)
%plus(s(0),X,Y) translates to plus(0,s(X),Y) which gives to be true tthe condition s(X)=y it takes that as granted and propagates it
%if you ask plainly plus(s(0),X,Y) it will reply Y=s(X)

%but in times(X, s(0), s(s(0))) v2 will fall in infinite loop though print the right result once. it is mysterious i know


plus(0,Y,Y).
plus(s(X),Y,Z):-plus(X,s(Y),Z).