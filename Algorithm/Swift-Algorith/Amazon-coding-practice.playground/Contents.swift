import UIKit

// creating Graph
class Graph {
    var nodeCount: Int
    var adjList: [[Int]] = []
    var visited: [Bool] = []
    var distance: [Int] = []
    
    init(_ nodeCount: Int) {
        self.nodeCount = nodeCount
        for i in 0...nodeCount {
            self.adjList.append([0])
            self.visited.append(false)
            self.distance.append(0)
        }
    }
    
// adding edge to node
    func addedge(_ u: Int , _ v: Int ) {
        adjList[u].append(v)
        adjList[v].append(u)
    }
}

// creating Queue

public struct queue<T> {
    var array: [T] = []
    
   public init() {
        array = []
    }
    
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    public mutating func pop() {
        if !array.isEmpty {
            array.removeFirst()
        }
    }
    
    public mutating func size() -> Int {
       return array.count
    }
    
    public mutating func front() -> T {
        return array.first!
    }
}

// adding Value to Graph

var createGraph = Graph(5)
createGraph.addedge(1, 2)
createGraph.addedge(2, 3)
createGraph.addedge(1, 4)
createGraph.addedge(3, 4)
createGraph.addedge(3, 5)

// BFS Implememt

var q = queue<Int>()
q.push(1)
createGraph.visited[1] = true

while q.size() > 0 {
    let u = q.front()
    q.pop()
    
    for _ in createGraph.adjList[u]{
        
    }
    
}




