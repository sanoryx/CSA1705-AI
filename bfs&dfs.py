from collections import deque

# Breadth-First Search
def bfs(graph, start):
    visited = {start}
    queue = deque([start])
    order = []

    while queue:
        node = queue.popleft()
        order.append(node)

        for neighbor in graph[node]:
            if neighbor not in visited:
                visited.add(neighbor)
                queue.append(neighbor)

    return order


# Depth-First Search
def dfs(graph, start):
    visited = set()
    order = []

    def visit(node):
        visited.add(node)
        order.append(node)

        for neighbor in graph[node]:
            if neighbor not in visited:
                visit(neighbor)

    visit(start)
    return order


graph = {
    1: [2, 3],
    2: [4, 5],
    3: [6, 7],
    4: [],
    5: [],
    6: [],
    7: []
}

print("BFS:", bfs(graph, 1))
print("DFS:", dfs(graph, 1))
