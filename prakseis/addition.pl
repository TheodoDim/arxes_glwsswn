nat(0).
nat(s(X)):-nat(X).

%plus(X,0,X).
% X+Y=Z => X+Y+1=Z+1
% Mindset: Ftiaxneis ena poli aplo base case kai me aplous kanones prospatheis na metatrepseis tin syntheti ekfrasi sto base case
%plus(X,s(Y),s(Z)):-plus(X,Y,Z).

plus(0,Y,Y).
plus(s(X),Y,Z):-plus(X,s(Y),Z).