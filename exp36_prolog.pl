edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(c, g).

heuristic(a, 6).
heuristic(b, 4).
heuristic(c, 2).
heuristic(d, 5).
heuristic(e, 3).
heuristic(f, 1).
heuristic(g, 0).

best_first(Start, Goal) :-
    search([Start], Goal).

search([Goal|_], Goal) :-
    write('Goal Found: '),
    write(Goal),
    nl.

search([Current|Rest], Goal) :-
    findall(Node, edge(Current, Node), Children),
    append(Rest, Children, NewList),
    sort_nodes(NewList, Sorted),
    search(Sorted, Goal).

sort_nodes(Nodes, Sorted) :-
    findall(H-Node,
        (member(Node, Nodes), heuristic(Node, H)),
        Pairs),
    keysort(Pairs, SortedPairs),
    pairs_values(SortedPairs, Sorted).