planet(mercury, 0.39, 88).
planet(venus, 0.72, 225).
planet(earth, 1.00, 365).
planet(mars, 1.52, 687).
planet(jupiter, 5.20, 4333).
planet(saturn, 9.58, 10759).
planet(uranus, 19.2, 30687).
planet(neptune, 30.05, 60190).

display_planets :-
    planet(Name, Distance, Period),
    write('Planet: '),
    write(Name),
    write(', Distance from Sun: '),
    write(Distance),
    write(' AU, Orbital Period: '),
    write(Period),
    write(' days'),
    nl,
    fail.

display_planets.