num(0).
num(s(X)):-num(X).


equal(0,0).

equal(s(X),s(Y)) :- equal(X,Y).
