node(apple).
node(banana).
node(car).
node(drive).
node(enjoy).
node(fight).

parentnode(apple, banana).
parentnode(apple, car).

parentnode(banana, drive).
parentnode(banana, enjoy).

parentnode(car, fight).

rootnode(X, Y):- parentnode(X, Z), parentnode(Z, Y).
siblingsnode(X, Y):- parentnode(Z, X), parentnode(Z, Y), X\==Y.