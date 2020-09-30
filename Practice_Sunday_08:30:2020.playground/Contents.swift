import UIKit
//
//
//
//public class ListNode {
//    public var val: Int
//    public var next: ListNode?
//    public init() { self.val = 0; self.next = nil; }
//    public init(_ val: Int) { self.val = val; self.next = nil; }
//    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
//}
//
//let twoNode = ListNode(23, nil)
//let rootNode = ListNode(12, twoNode )
//
//class Solution {
//
//    func listLength(_ head: ListNode?) -> Int {
//        var length = 0
//        var currentNode = head
//
//        while currentNode != nil {
//            currentNode = currentNode?.next
//            length += 1
//        }
//
//        return length
//    }
//
//    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
//
//        var currentIndex = 1
//        var currentNode = head
//        var l = listLength(head)
//        var targetIndex = l - n + 1
//
//        if targetIndex == 1 {
//            return head?.next
//        }
//
//        while currentNode != nil {
//            if currentIndex == targetIndex - 1 {
//                currentNode?.next = currentNode?.next?.next
//            }
//
//            currentNode = currentNode?.next
//            currentIndex += 1
//
//        }
//
//        return head
//    }
//}
//
//func printList (_ head : ListNode? ) -> ListNode? {
//
//    var currentNode = head
//
//    while currentNode != nil {
//        print (currentNode?.val ?? 0 )
//        currentNode = currentNode?.next
//    }
//
//    return currentNode
//}
//
////printList(rootNode)
//
//func reversedList( _ head: ListNode? ) -> ListNode? {
//
//    var currentNode = head
//    var prev: ListNode?
//    var next: ListNode?
//
//    while currentNode != nil {
//
//        next = currentNode?.next
//        currentNode?.next = prev
//        prev = currentNode
//        currentNode = next
//    }
//
//    return prev
//}
//
//func insertNode(_ prevNode: ListNode? , newValue: Int ) {
//    if prevNode == nil {
//        return
//    }
//
//    let newNode = ListNode(newValue, prevNode?.next)
//    prevNode?.next = newNode
//
//}
//
////var l = reversedList(rootNode)
////printList(l)
//
//insertNode(rootNode, newValue: 20)
//printList(rootNode)
//


//func countPrime(_ n: Int) -> Int {
//
//    guard n > 2 else {
//        return 0
//    }
//
//    var isPrime = Array(repeating: true , count : n )
//
//    isPrime[0] = false
//    isPrime[1] = false
//    var count = 0
//
//    for i in 2..<n {
//
//        guard isPrime[i] else {
//            continue
//        }
//        count += 1
//
//        var index = i * i
//        while index < n {
//            isPrime [index] = false
//            index += i
//        }
//
//    }
//
//    for i in 2..<n {
//        if isPrime[i] {
//            print(i)
//        }
//    }
//
//    return count
//}
//
//countPrime(20)


//func countPrime(_ n: Int) -> Int {
//    guard n > 2 else {
//        return 0
//    }
//
//    var isPrime = Array(repeating: true, count: n)
//    isPrime[0] = false
//    isPrime[1] = false
//    var count = 0
//
//    for i in 2..<n {
//        guard isPrime[i] else {
//            continue
//        }
//        count += 1
//
//        var index = i * i
//        while index < n {
//            isPrime[index] = false
//
//            index += i
//        }
//
//    }
//
//    for i in 2..<n {
//        if isPrime[i] {
//            print(i)
//        }
//    }
//   return count
//}
//
//
//countPrime(30)


//struct Stack {
//
//    var stack: [String] = []
//
//    mutating  func peek() -> String {
//
//        guard let topElement = stack.first else {(fatalError())}
//        return topElement
//    }
//
//    mutating func pop() -> String {
//        return stack.removeFirst()
//    }
//
//    mutating  func push(_ element: String ) {
//
//        stack.insert(element, at: 0)
//
//    }
//
//
//}
//
//var stackImpl = Stack()
//stackImpl.push("Amit")
//
//stackImpl.peek()
//stackImpl.pop()



//
//func fibbonacci(numOfStep: Int, first: Int, second: Int  ) -> [Int]{
//
//    if numOfStep == 0  {
//        return []
//    }
//
//
//
//    return [first + second] + fibbonacci(numOfStep: numOfStep - 1 , first: second , second: first + second )
//
//}
//
//let l = fibbonacci(numOfStep: 5, first: 0, second: 1)
//print(l)


//
//func factorial(num:  UInt ) -> UInt {
//
//    if num == 0 {
//    return 1
//    }
//
//    var product : UInt = 1
//
//    for i in 1...num {
//       product = product * i
//    }
//
//    return product
//}
//
//
//factorial(num: 3)


func factorial (n: UInt) -> UInt {
    
    if n == 0 {
        return 1
    }
    
    var product : UInt = 1
    for i in 1...n{
        product = product * i
    }
    
    return product
}

factorial(n: 5)
