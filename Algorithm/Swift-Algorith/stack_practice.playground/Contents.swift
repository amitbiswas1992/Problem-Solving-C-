import UIKit


//
//class Node {
//    var value : Int
//    var next: Node?
//
//    init(value: Int) {
//        self.value = value
//    }
//}
//
//class Stack {
//    var top : Node?
//    func push(_ value: Int) {
//        top = Node(value: value)
//    }
//
//    func pop () -> Int? {
//     let currentTop = top
//        top = top?.next
//        return currentTop?.value
//
//    }
//}
//var stack = Stack()
//stack.push(1)
//stack.push(2)
//stack.push(3)
//
//let firstPop = stack.pop()
//
//

class Node {
    var value : Int
    var next : Node?
    
    init (value: Int ){
        self.value = value
    }
    
}

class Stack {
    var top : Node?
    
    func push (_ value : Int) {
      top = Node(value: value)
    }
    
    func pop()-> Int? {
        
        let currentTop = top
        top = top?.next
        return currentTop?.value
    }
    
}

var stack = Stack()
stack.push(3)
stack.push(5)

let firstPop = stack.pop()



