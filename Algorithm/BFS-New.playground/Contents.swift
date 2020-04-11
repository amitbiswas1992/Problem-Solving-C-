import UIKit

class graph {
    var nodeCount : Int
    var adjlist: [[Int]] = []
    var visited: [Bool] = []
    var distance: [Int] = []
    
    init(_ nodeCount : Int){
        self.nodeCount = nodeCount
        for i in 0...nodeCount {
            self.adjlist.append ([])
            self.visited.append(false)
            self.distance.append(0)
        }
    }
    
    public func addedge (_ u: Int, _ v: Int) {    // 4 -> 5   5 -> 4
        adjlist[u].append (v)
        adjlist[v].append (u)
    }
}

public struct queue<T> {
    private var array: [T]
    public init(){
        array = []
    }
    public mutating func push(_ element: T){
        array.append(element)
    }
    public mutating func pop(){
        if !array.isEmpty{
            array.removeFirst()
        }
    }
    public mutating func front() -> T{
        return array[0]
    }
    public mutating func size() -> Int {
        return array.count
    }
}

var g = graph(5)
g.addedge(1, 2)
g.addedge(2, 3)
g.addedge(1, 4)
g.addedge(3, 4)
g.addedge(3, 5)

//1: [2, 4]
//BFS, O (V+E), v = nodecount, e = edgecount
var q = queue<Int>()
q.push(1)
g.visited[1] = true
while q.size() > 0 {
    var u = q.front()
    q.pop()
    for v in g.adjlist[u] {
        if g.visited[v] == false {
            g.visited[v] = true
            g.distance[v] = g.distance[u] + 1
            q.push(v)
        }
    }
}

for i in 1...5 {
    print ("Distance of \(i) is: \(g.distance[i])")
}

