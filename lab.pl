female(pam).
female(liz).
female(pat).
female(ann).

male(jim).
male(bob).
male(tom).
male(peter).

parents(pam, bob).

parents(tom, bob).
parents(tom, liz).

parents(bob, ann).
parents(bob, pat).
parents(bob, peter).

parents(pat. jim).
parents(peter, jim).

mother(X, Y):- parents(X, Y), female(X).
father(X, Y):- parents(X, Y), male(X).


sister(X, Y):- parents(Z, X), parents(Z, Y), female(X), X\==Y.

brother(X, Y):- parents(Z, X), parents(Z, Y), male(X), X\==Y.
grandparent(X, Y):- parents(X, Z), parents(Z, Y).