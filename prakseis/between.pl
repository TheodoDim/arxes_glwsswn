num(0).
num(s(X)):-num(X).


%between(X,Y,Z) means X<=Y<=Z
%between(0,Y,Y).
%between(0,X,Y):-between(X,Y,Y).
%between(s(X),s(Y),s(Z)):-between(X,Y,Z).

% very interesing behaviour the ; in prolog means ok you found an answer lets say throygh between(0,Y,Y) now with ; take one step back and go
% to the next option to find a new answer the new answer is the between(0,X,Y):-between(X,Y,Y) which sends us back to right where we started


% Lets resolve it now! I keep the above cause it is quite educational! Good job for the though anyways.

between(0,0,X):-num(X).
between(0,s(Y),s(Z)):- between(0,Y,Z).
between(s(X),s(Y),s(Z)):- between(X,Y,Z).