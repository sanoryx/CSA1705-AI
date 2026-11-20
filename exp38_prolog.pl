fact(raining).
fact(cloudy).

rule(wet_ground) :-
    fact(raining).

rule(carry_umbrella) :-
    fact(raining).

rule(possible_rain) :-
    fact(cloudy).

derive(X) :-
    rule(X),
    write('Derived Fact: '),
    write(X),
    nl.