fact(raining).
fact(cloudy).
fact(wet_ground).

rule(carry_umbrella) :-
    fact(raining).

rule(wet_ground) :-
    fact(raining).

rule(possible_rain) :-
    fact(cloudy).

prove(X) :-
    fact(X).

prove(X) :-
    rule(X).