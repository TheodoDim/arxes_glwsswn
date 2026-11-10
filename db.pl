edge(a,b).
edge(b,a).
edge(b,c).
edge(c,d).
edge(d,a).

connect(X,Y):-edge(X,Y).
connect(X,Y):-edge(X,Z),connect(Z,Y).
