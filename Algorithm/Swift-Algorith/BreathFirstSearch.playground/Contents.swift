import UIKit

func bfs (nodes: Int, edges: Int, edgelist: [[Int]], source: Int, destination: Int) -> Int{
    var graph: [[Int]] = []
    var d: [Int] = []
    for i in 0...nodes{
        graph.append([])
        d.append(-1)
    }
    for e in edgelist{
        graph[e[0]].append(e[1])
        graph[e[1]].append(e[0])
    }
    var queue: [Int] = []
    queue.append(source)
    d[source] = 0
    while queue.count > 0{
        var u: Int = queue[0]
        queue.removeFirst()
        for v in graph[u]{
            if d[v] == -1{
                d[v] = d[u] + 1
                queue.append(v)
            }
        }
    }
    return d[destination]
}

print (bfs (nodes: 8, edges: 9, edgelist: [[1,2],[2,3],[1,5],[5,6],[6,4],[2,4],[3,7],[4,7],[4,8]], source: 1, destination: 8))
