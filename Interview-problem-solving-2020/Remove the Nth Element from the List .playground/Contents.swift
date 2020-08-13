import UIKit

class ListNode {
    var value : Int
    var next: ListNode?
    
    init (value : Int , next: ListNode?) {
        self.value = value
        self.next = next
    }
    
}

//func findLength(_ head: ListNode?) -> Int {
//    var currentNode = head
//    var lenght = 0
//    while currentNode != nil {
//        currentNode = currentNode?.next
//
//        lenght += 1
//    }
//
//    return lenght
//}
//
//func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
//
//    var L = findLength(head)
//    var targetIndex = L - n + 1  //5 - 2 + 1
//
//    if targetIndex == 1 {
//        return head?.next
//    }
//
//    var currentNode = head
//    var currentIndex = 1
//
//    while currentNode != nil {
//
//        if currentIndex == targetIndex - 1 {
//            currentNode?.next = currentNode?.next?.next
//            break
//        }
//
//        currentNode = currentNode?.next
//        currentIndex += 1
//    }
//    return head
    
func listLenght(_ head: ListNode?) -> Int {
    var lenght = 0
    var currentNode = head
    
    while currentNode != nil {
        currentNode = currentNode?.next
        
        lenght += 1
    }
    
    return lenght
}

func removeNthElement(head: ListNode?, _ n: Int) -> ListNode? {
    var l = listLenght(head)
    
    var targetIndex = l - n + 1
    
    var currentNode = head
    var currentIndex = 1
    
    while currentNode != nil {
        if currentIndex == targetIndex - 1 {
            currentNode?.next = currentNode?.next?.next
            break
        }
        
        currentNode = currentNode?.next
        currentIndex += 1
    
    }
return head
    
}
