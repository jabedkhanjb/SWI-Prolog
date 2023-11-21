node(a).
node(b).
node(c).
node(d).
node(e).
node(f).

parentnode(a,b).
parentnode(a,c).
parentnode(b,d).
parentnode(b,e).
parentnode(c,f).

rootnode(X,Y):- parentnode(X,Z), parentnode(Z,Y).
siblingnode(X,Y):- parentnode(Z,X), parentnode(Z,Y), X\==Y.