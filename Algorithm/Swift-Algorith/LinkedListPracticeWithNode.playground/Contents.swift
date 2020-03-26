import UIKit

class Node {
    var value: Int
    var next: Node?
    
    init (value: Int, next: Node?) {
        self.value = value
        self.next = next
    
    }
}

let secondNode = Node(value: 2, next: nil)
let firstNode = Node(value: 1, next: secondNode)

func printLinkedList(headerNode: Node? ){
    
   var rootNode = headerNode
    while rootNode != nil {
        print(rootNode?.value ?? -1 )
        rootNode = rootNode?.next
    }
}

printLinkedList(headerNode: firstNode)


