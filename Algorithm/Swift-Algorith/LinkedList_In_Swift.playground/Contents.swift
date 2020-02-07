import UIKit

//class Node {
//    var value : Int
//    var next : Node?
//
//    init(value: Int , next: Node?) {
//
//        self.value = value
//        self.next = next
//    }
//
//}
//
//let fifthNode = Node(value: 5, next: nil)
//let fourthNode = Node(value: 4, next: fifthNode)
//let thirdNode = Node(value: 3, next: fourthNode)
//let secondNode = Node(value: 2, next: thirdNode)
//let firstNode = Node(value: 1, next: secondNode)
//
//// print linked list
//
//func printLinkedList(headNode: Node? ) {
//   var currentNode = headNode
//    print("Printing Linked List")
//    while (currentNode != nil) {
//        print(currentNode?.value ?? -1)
//        currentNode = currentNode?.next
//    }
//
//}
//print(printLinkedList(headNode: firstNode))


class Node {
    var value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

let thirdNode = Node(value: 3, next: nil)
let secondNode = Node(value: 2, next: thirdNode)
let firstNode = Node(value: 1, next: secondNode)

func printLinkedList(headerNode: Node?) {
    var rootNode = headerNode
    print ("Linked List Printing ")
    while (rootNode != nil) {
        print(rootNode?.value ?? -1)
        rootNode = rootNode?.next
    }
}

print(printLinkedList(headerNode: firstNode))
