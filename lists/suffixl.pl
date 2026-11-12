%suffixl(A,B) true if B ends withs the A list;s elements

suffixl(L,L).
suffixl(L, [_|Y]):- suffixl(L,Y).