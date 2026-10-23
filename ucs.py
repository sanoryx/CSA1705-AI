import heapq

# Uniform Cost Search
def ucs(graph, start, goal):
    pq = [(0, start, [start])]
    visited = set()

    while pq:
        cost, node, path = heapq.heappop(pq)

        if node in visited:
            continue

        visited.add(node)

        if node == goal:
            return path, cost

        for neighbor, weight in graph[node]:
            if neighbor not in visited:
                heapq.heappush(
                    pq,
                    (cost + weight, neighbor,
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

path, cost = ucs(graph, 'A', 'F')
print("Path:", path)
print("Cost:", cost)
