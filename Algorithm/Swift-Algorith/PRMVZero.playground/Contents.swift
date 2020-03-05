import UIKit

class Node {
    var value : Int
    var next: Node?
    
    init(value: Int , next: Node?) {
        self.value = value
        self.next = next
    }
}

class Stack {
    var top : Node?
    func push(_ value: Int) {
        top = Node(value: value, next: nil)
    }
    
//    func  pop( ) -> Int? {
//
//
//        return Int
//    }
    
    
}

var stack = Stack()
stack.push(1)
stack.push(2)
stack.push(3)

