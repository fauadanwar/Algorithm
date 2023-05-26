func depthFirstSearch(graph: [Character: [Character]], source: Character)
{
    var stack = [source]
    while(stack.count > 0)
    {
        let current: Character = stack.removeLast()
        print(current)
        if let neighbors = graph[current]
        {
            for neighbor in neighbors
            {
                stack.append(neighbor)
            }
        }
    }
}

func depthFirstSearchRecusrsion(graph: [Character: [Character]], source: Character)
{
    print(source)
    for neighbur in graph[source]!
    {
        depthFirstSearchRecusrsion(graph: graph, source: neighbur)
    }
}

func hasPathDFS( graph: [Character: [Character]], source: Character, destination : Character) -> Bool
{
    if source == destination
    {
        return true
    }
    for neighbour in graph[source]!
    {
        if hasPathDFS(graph: graph, source: neighbour, destination: destination)
        {
            return true
        }
    }
    return false
}

let graph: [Character: [Character]] = [
    "a": ["b", "c"],
    "b": ["d"],
    "c": ["e"],
    "d": ["f"],
    "e": [],
    "f": []
]
print(hasPathDFS(graph: graph, source: "a", destination: "f"))
depthFirstSearch(graph: graph, source: "a")
depthFirstSearchRecusrsion(graph: graph, source: "a")
