at(monkey, door).
at(banana, middle).
at(box, window).

can_reach(monkey, banana) :-
    at(monkey, middle),
    at(banana, middle),
    at(box, middle),
    on(monkey, box).

on(monkey, box).

move(monkey, door, middle).
move(monkey, middle, window).
move(monkey, window, middle).

grasp(banana) :-
    can_reach(monkey, banana),
    write('Monkey gets the banana!'),
    nl.

solve :-
    write('Monkey is at door'), nl,
    write('Monkey moves to middle'), nl,
    write('Monkey pushes box to middle'), nl,
    write('Monkey climbs onto box'), nl,
    write('Monkey grasps the banana'), nl,
    write('Monkey successfully gets the banana!'), nl.