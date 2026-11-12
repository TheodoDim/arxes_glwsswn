% sublist([4,5],[1,2,3,4,5,6]) is true the first list should be a continuous sublist of the second.


% first method
%prefixl([],L).
%prefixl([X|Y],[X|Z]):-prefixl(Y,Z).

%sublist(X,Y):- prefixl(X,Y).
%sublist(X , [Y|Ys]):- sublist(X,Ys).

% second method


%suffixl(L,L).
%suffixl(L, [_|Y]):- suffixl(L,Y).
%prefixl([],L).
%prefixl([X|Y],[X|Z]):-prefixl(Y,Z).


%sublist(X,Y):- prefixl(A,Y), suffixl(X,A).

% third method - watch out this gives sublists that are not necesserily continuous and makes sense from the rules below

sublist([], Ys).
sublist([X|Xs],[X|Ys]):-sublist(Xs,Ys).
sublist(X,[_|Ys]):-sublist(X,Ys).