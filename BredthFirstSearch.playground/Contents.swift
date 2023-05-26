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
let graph: [Character: [Character]] = [
    "a": ["b", "c"],
    "b": ["d"],
    "c": ["e"],
    "d": ["f"],
    "e": [],
    "f": []
]
bredthFirstSearch(graph: graph, source: "a")
