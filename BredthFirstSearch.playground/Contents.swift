func bredthFirstSearch( graph: [Character: [Character]], source: Character)
{
    var queue = [source]
    while(queue.count > 0)
    {
        let current: Character = queue.removeFirst()
        print(current)
        if let neighbours = graph[current]
        {
            for neighbour in neighbours
            {
                queue.append(neighbour)
            }
        }
    }
}

func hasPathBFS( graph: [Character: [Character]], source: Character, destination : Character) -> Bool
{
    var queue = [source]
    
    while queue.count > 0
    {
        let current = queue.removeFirst()
        if current == destination
        {
            return true
        }
        for neighbour in graph[current]!
        {
            queue.append(neighbour)
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
bredthFirstSearch(graph: graph, source: "a")
print(hasPathBFS(graph: graph, source: "a", destination: "f"))
