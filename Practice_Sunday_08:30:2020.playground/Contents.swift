import UIKit



public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

let twoNode = ListNode(23, nil)
let rootNode = ListNode(12, twoNode )

class Solution {
    
    func listLength(_ head: ListNode?) -> Int {
        var length = 0
        var currentNode = head
        
        while currentNode != nil {
            currentNode = currentNode?.next
            length += 1
        }
        
        return length
    }
    
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
       
        var currentIndex = 1
        var currentNode = head
        var l = listLength(head)
        var targetIndex = l - n + 1
        
        if targetIndex == 1 {
            return head?.next
        }
        
        while currentNode != nil {
            if currentIndex == targetIndex - 1 {
                currentNode?.next = currentNode?.next?.next
            }
            
            currentNode = currentNode?.next
            currentIndex += 1
            
        }

        return head
    }
}

func printList (_ head : ListNode? ) -> ListNode? {
    
    var currentNode = head
    
    while currentNode != nil {
        print (currentNode?.val ?? 0 )
        currentNode = currentNode?.next
    }
    
    return currentNode
}

//printList(rootNode)

func reversedList( _ head: ListNode? ) -> ListNode? {
    
    var currentNode = head
    var prev: ListNode?
    var next: ListNode?
    
    while currentNode != nil {
    
        next = currentNode?.next
        currentNode?.next = prev
        prev = currentNode
        currentNode = next
    }
    
    return prev
}

func insertNode(_ prevNode: ListNode? , newValue: Int ) {
    if prevNode == nil {
        return
    }
    
    let newNode = ListNode(newValue, prevNode?.next)
    prevNode?.next = newNode
    
}

//var l = reversedList(rootNode)
//printList(l)

insertNode(rootNode, newValue: 20)
printList(rootNode)

