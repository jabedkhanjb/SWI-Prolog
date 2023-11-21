female(pam).
female(liz).
female(pat).
female(ann).

male(jim).
male(bob).
male(tom).
male(peter).

parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).
parent(bob, peter).
parent(peter, jim).

brother(X,Y):- parent(Z,X), parent(Z,Y), male(X), X\==Y.
sister(X,Y):- parent(Z,X), parent(Z,Y), female(X), X\==Y.
grandparent(X,Z):- parent(X,Y), parent(Y,Z).
aunt(X,Z):- parent(Y,Z), sister(X,Y), female(X).