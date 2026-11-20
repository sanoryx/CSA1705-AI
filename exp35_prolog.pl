fruit(apple).
fruit(banana).
fruit(orange).
fruit(grapes).
fruit(mango).

colour(apple, red).
colour(banana, yellow).
colour(orange, orange).
colour(grapes, green).
colour(mango, yellow).

fruit_colour(Fruit, Colour) :-
    fruit(Fruit),
    colour(Fruit, Colour).