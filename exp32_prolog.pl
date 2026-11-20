male(john).
male(peter).
male(david).
male(james).

female(mary).
female(lisa).
female(susan).
female(anna).

parent(john, peter).
parent(mary, peter).
parent(john, lisa).
parent(mary, lisa).
parent(peter, david).
parent(susan, david).
parent(peter, anna).
parent(susan, anna).

father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).