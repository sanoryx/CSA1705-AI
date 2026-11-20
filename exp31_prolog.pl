bird(sparrow).
bird(parrot).
bird(pigeon).
bird(eagle).
bird(ostrich).
bird(penguin).

can_fly(X) :-
    bird(X),
    not(cannot_fly(X)).

cannot_fly(ostrich).
cannot_fly(penguin).