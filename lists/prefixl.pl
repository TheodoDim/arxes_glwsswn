% prefix(A,B) is true if list B starts with the elements of list a


prefixl([],L).
prefixl([X|Y],[X|Z]):-prefixl(Y,Z).