nat(0).
nat(s(X)):-nat(X).

less(0, s(X)).

less(s(X),s(Y)):-less(X,Y).