import UIKit


// |value | Next Adress |


//class Node {
//    var value : Int
//    var next: Node?
//
//    init(value: Int , next: Node?) {
//        self.value = value
//        self.next = next
//    }
//
//}
//let fourthNode = Node(value: 4, next: nil)
//let thirdNode = Node(value: 3, next:fourthNode)
//let secondNode = Node(value: 2, next: thirdNode)
//let firstNode = Node(value: 1, next: secondNode)
//
//
//
//func linkedList(headerNode : Node?) {
//    var rootNode = headerNode
//    while (rootNode != nil) {
//        print(rootNode?.value ?? -1)
//        rootNode = rootNode?.next
//    }
//}
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
//func insertNewNodeBetweenTwoNode(previousNode: Node?, newValue: Int) {
//    if (previousNode == nil)
//    {
//        return
//    }
//    let new_node = Node(value: newValue, next: previousNode?.next)
//    previousNode?.next = new_node
//}
//
//
//linkedList(headerNode: firstNode)
//
////insertNode(headerNode: firstNode, newValue: 10)
////insertNode(headerNode: firstNode, newValue: 11)
////linkedList(headerNode: firstNode)
//insertNewNodeBetweenTwoNode(previousNode: thirdNode, newValue: 20)


class Node {
    var value : Int
    var next : Node?
    
    init (value: Int , next: Node?) {
        self.value = value
        self.next = next
        
    }
    
}

    let fourthNode = Node(value: 4, next: nil)
    let thirdNode = Node(value: 3, next: fourthNode)
    let secondNode = Node(value: 2, next: thirdNode)
    let firstNode = Node(value: 1, next: secondNode)

func printLinkedList(headNode: Node?){
    
    var currentNode = headNode
    while currentNode != nil {
        print(currentNode?.value ?? -1)
     
        currentNode = currentNode?.next
    }
}

printLinkedList(headNode: firstNode)

// Reversed LinkedList

func reversedList (head: Node?)-> Node? {

    var nextNode: Node?
    var prevNode: Node?
    var currentNode = head
    
    while currentNode != nil {
        nextNode = currentNode?.next
        currentNode?.next = prevNode
        prevNode = currentNode
        currentNode = nextNode
        
        
    }
    
    
    return prevNode
    

// insert a new node


func insertNode (newValue: Int, prevNode: Node? ) {
    
    if prevNode == nil {
        return
    }
    
    var newNode = Node(value: newValue, next: prevNode?.next)
    
    prevNode?.next = newNode
    
}
    
    
    // Add a new Node in to Linkedlist

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
    
    func addNode(head: Node?, newValue: Int  ) {
        
        var currentNode = head
        
        var newNode = Node(value: newValue, next: nil)
        
        while (true) {
            
            if currentNode?.next == nil {
                currentNode?.next = newNode
                break
            }
            
            currentNode = currentNode?.next
        }
        
    }


insertNode(newValue: 20, prevNode: secondNode)
//let l = reversedList(headNode: firstNode)
printLinkedList(headNode: firstNode)

// best time to buy and sell stock

}



