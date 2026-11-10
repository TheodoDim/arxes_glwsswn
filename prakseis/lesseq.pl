num(0).
num(s(X)):-num(X).

lesseq(0,X).

% X<=Y => X=1<=Y+1
lesseq(s(X),s(Y)):-lesseq(X,Y).