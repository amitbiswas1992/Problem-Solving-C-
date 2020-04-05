import UIKit

class Node {
    var value: Int
    var next: Node?
    
    init(value : Int, next : Node?) {
        self.value = value
        self.next = next
    }
}
let node6 = Node(value: 6, next: nil)
let node5 = Node(value: 5, next: node6)
let node4 = Node(value: 2, next: node5)
let node3 = Node(value: 1, next: node4)
let secondNode = Node(value: 2, next: node3)
let firstNode = Node(value: 1, next: secondNode)

func mergeTwoList (_ l1: Node?, _ l2: Node?) -> Node?  {
    
    guard let l1 = l1 else  {
        return l2
    }
    guard let l2 = l2 else {
        return l1
    }
    
    if l1.value < l2.value {
        l1.next = mergeTwoList(l1.next, l2)
        return l1
    }else {
        l2.next = mergeTwoList(l1, l2.next)
        return l2
    }
    
}

mergeTwoList(firstNode, secondNode)

// Insert a Nore in a linkedlist

func insertNode(headerNode: Node?, newValue: Int) {
    var currentNode = headerNode
    var newNode = Node(value: newValue, next: nil)
    while (true) {
        if (currentNode?.next == nil){
            currentNode?.next = newNode
            break
        }
        currentNode = currentNode?.next
    }
}

func singleNumber(_ nums: [Int]) -> Int {
      var result = 0
      
    for i in nums {
        result ^= i
    }
    return result
}

// all duplicate in Array

class Solution {
   func findDuplicates (_ nums : [Int]) -> [Int] {
    var newArray : [Int] = []
    var arr = nums
   
    for i in 0..<arr.count {
         var index = abs(arr[i]) - 1
        
        if arr[index] < 0 {
            newArray.append(index + 1)
        }else {
            arr[index] = -arr[index]
        }
        
    }
    return newArray
}
}
