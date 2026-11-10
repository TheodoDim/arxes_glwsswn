num(0).
num(s(X)):-num(X).

%exp(X,Y,Z) Z = X^Y

plus(0,Y,Y).
plus(s(X),Y,Z):-plus(X,s(Y),Z).

times(0,Y,0).
times(s(X), Y , Z) :- plus(Y,K,Z),times(X,Y,K).

exp(s(X) , 0 , s(0)):-num(X).
exp(0, s(Y) , 0):-num(Y).
exp(X,s(Y),Z):-times(X,K,Z) , exp(X,Y,K).

% still to see why order matters here?