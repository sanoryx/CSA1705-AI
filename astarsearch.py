import heapq

# A* Search
def astar(graph, heuristic, start, goal):
    pq = [(heuristic[start], 0, start, [start])]
    visited = set()

    while pq:
        f, g, node, path = heapq.heappop(pq)

        if node == goal:
            return path, g

        if node in visited:
            continue

        visited.add(node)

        for neighbor, weight in graph[node]:
            if neighbor not in visited:
                new_g = g + weight
                new_f = new_g + heuristic[neighbor]

                heapq.heappush(
                    pq,
                    (new_f, new_g, neighbor,
                     path + [neighbor])
                )

    return None, float('inf')


graph = {
    'A': [('B', 1), ('C', 4)],
    'B': [('D', 2), ('E', 5)],
    'C': [('E', 1)],
    'D': [('F', 3)],
    'E': [('F', 2)],
    'F': []
}

heuristic = {
    'A': 5, 'B': 4, 'C': 2,
    'D': 3, 'E': 1, 'F': 0
}

path, cost = astar(graph, heuristic, 'A', 'F')
print("Path:", path)
print("Cost:", cost)
