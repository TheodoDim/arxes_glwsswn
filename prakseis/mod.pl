
num(0).
num(s(X)):-num(X).

plus(0,Y,Y).
plus(s(X),Y,Z):-plus(X,s(Y),Z).

times(0,Y,0).
times(s(X), Y , Z) :- times(X,Y,K),plus(Y,K,Z).

less(0, s(X)).

less(s(X),s(Y)):-less(X,Y).


% X % Y = K => Y * Z + K = X
mod(X,Y,K) :- less(K,Y),times(Y,Z,B), plus(B,K,X).