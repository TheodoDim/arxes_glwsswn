num(0).
num(s(X)):-num(X).

plus(0,Y,Y).
plus(s(X),Y,Z):-plus(X,s(Y),Z).

times(0,Y,0).


times(s(X), Y , Z) :- times(X,Y,K),plus(Y,K,Z).

factorial(0 , s(0)).
factorial(s(N),K):- factorial(N, M),times(M,s(N),K).