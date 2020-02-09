import UIKit


// |value | Next Adress |
class Node {
    var value : Int
    var next: Node?
    
    init(value: Int , next: Node?) {
        self.value = value
        self.next = next
    }
    
}
let fourthNode = Node(value: 4, next: nil)
let thirdNode = Node(value: 3, next:fourthNode)
let secondNode = Node(value: 2, next: thirdNode)
let firstNode = Node(value: 1, next: secondNode)



func linkedList(headerNode : Node?) {
    var rootNode = headerNode
    while (rootNode != nil) {
        print(rootNode?.value ?? -1)
        rootNode = rootNode?.next
    }
}

// Add a new node to the Linked List last

//func insertNode(headerNode: Node?, newValue: Int) {
//    var currentNode = headerNode
//    var newNode = Node(value: newValue, next: nil)
//    while (true) {
//        if (currentNode?.next == nil){
//            currentNode?.next = newNode
//            break
//        }
//        currentNode = currentNode?.next
//    }
//}

func insertNewNodeBetweenTwoNode(previousNode: Node?, newValue: Int) {
    if (previousNode == nil)
    {
        return
    }
    let new_node = Node(value: newValue, next: previousNode?.next)
    previousNode?.next = new_node
}


linkedList(headerNode: firstNode)

//insertNode(headerNode: firstNode, newValue: 10)
//insertNode(headerNode: firstNode, newValue: 11)
//linkedList(headerNode: firstNode)
insertNewNodeBetweenTwoNode(previousNode: thirdNode, newValue: 20)




