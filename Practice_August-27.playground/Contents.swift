import UIKit
//
//func countPrime(_ n : Int ) -> Int {
//
//    guard n > 2 else {
//        return 0
//    }
//    var isPrime = Array(repeating: true, count : n)
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
//            index += i
//        }
//
//    }
//
//    for i in 2..<n {
//        if isPrime[i] {
//            print (i)
//        }
//
//    }
//
//
//    return count
//}
//
//countPrime(20)

/*
1234
5678
-----
2
 */



//func add(a: String, b: String) -> String {
//    var ca = Array(a)
//    var cb = Array(b)
//
//    var ans: [Int] = []
//
//    var i = a.count - 1
//    var j = b.count - 1
//    var hand = 0
//
//    while i >= 0 || j >= 0 || hand > 0 {
//        var da = 0
//        var db = 0
//        if i >= 0 {
//            da = Int(String(ca[i]))!
//        }
//        if j >= 0 {
//            db = Int(String(cb[j]))!
//        }
//        da += db
//        da += hand
//        ans.append(da % 10)
//        hand = da / 10
//        i -= 1
//        j -= 1
//    }
//    ans.reverse()
//
//    var res = ""
//    for i in ans {
//        res += String(i)
//    }
//    return res
//}
//
//let a = "123333333333333333333333333333"
//let b = "45676563456034658073445"
//print(add(a: a, b: b))


//func fibbonacci(numOfSteps: Int , first: Int , second: Int ) -> [Int] {
//
//    if numOfSteps == 0 {
//        return []
//    }
//
//
//    return [first + second] + fibbonacci(numOfSteps: numOfSteps - 1 , first: second, second: first + second)
//}
//
//
//
//[0 + 1] + fibbonacci(numOfSteps: 9, first: 0, second: 1)



//func factorialNumber(value: UInt) -> UInt  {
//    var product : UInt = 1
//
//    for i in 1...value {
//
//        product = product * i
//    }
//
//
//    return product
//}
//
//print(factorialNumber(value: 5))


//func factorial (value: UInt) -> UInt {
//
//    var product: UInt = 1
//
//    for i in 1..<value {
//        product = product * i
//    }
//
//    return product
//}
//
//factorial(value: 4)


//
//struct Stack {
//
//    var array: [Int] = []
//
//    mutating func peek () -> Int {
//
//        guard let topElement = array.first else {
//            fatalError()
//        }
//        return topElement
//
//    }
//    mutating func pop () -> Int {
//        return array.removeFirst()
//    }
//
//    mutating func push (_ element : Int ) {
//        array.insert(element, at: 0)
//    }
//
//
//}
//
//
//var stack = Stack()
//
//stack.push(10)
//stack.pop()

//
//
//class Node {
//    var value: Int
//    var next: Node?
//
//    init (value: Int , next: Node?) {
////        self.value = value
//        self.next = next
//    }
//}
//
//let thirdNode = Node(value: 4, next: nil)
//let secondNode = Node(value: 3, next: thirdNode)
//let rootNode = Node(value: 1, next: secondNode)


//func printList(headNode: Node?) {
//
//    var currentNode = headNode
//
//    while currentNode != nil {
//        print(currentNode?.value ?? 0 )
//        currentNode = currentNode?.next
//    }
//
//}
//
//printList(headNode: rootNode)
//
////func reversedList (headNode: Node? ) -> Node? {
////
////    var currentNode = headNode
////    var next: Node?
////    var prev: Node?
////
////
////    while currentNode != nil {
////        next = currentNode?.next
////        currentNode?.next = prev
////        prev = currentNode
////        currentNode = next
////
////
////    }
////
////
////    return prev
////}
////
////
////
////let l = reversedList(headNode: rootNode)
////reversedList(headNode: l)
//
//
//func reverseList(head: Node?)-> Node?{
//
//    var currentNode = head
//
//    var prevNode : Node?
//    var nextNode : Node?
//
//    while currentNode != nil {
//
//        nextNode = currentNode?.next
//        currentNode?.next = prevNode
//        prevNode = currentNode
//        currentNode = nextNode
//
//
//
//    }
//    return prevNode
//}
//
//let myReversedLinkedlist = reverseList(head: rootNode)
//print (reverseList(head: myReversedLinkedlist) ?? 0)


let closure: (Int, Int) -> Int = { (number1, number2) in
return number1 + number2
}
closure(8,2) // the result is 10


let clouse2: (Int, Int ) -> Int = {
    (num1, num2 ) in
    return num1 + num2
}


for i in 1...n {
    if i % 15 == 0 {
        str.append("Fizbuzz")
    }
}
