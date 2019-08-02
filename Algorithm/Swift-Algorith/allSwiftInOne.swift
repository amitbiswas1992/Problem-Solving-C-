import UIKit


// Recursive Search through binary tree

//    10
//   /  \
//  5   11
// /   /  \
//1  20   14
//
//class Node {
//
//    let value: Int
//    var leftChild: Node?
//    var rightChild: Node?
//
//    init(value : Int, leftChild: Node?, rightChild: Node?){
//
//        self.value = value
//        self.leftChild = leftChild
//        self.rightChild = rightChild
//
//    }
//
//}
//
////    10
////   /  \
////  5   11
//// /   /  \
////1  20   14
//
//let oneNode = Node(value: 1, leftChild: nil, rightChild: nil)
//
//let fiveNode = Node(value: 5, leftChild: oneNode, rightChild: nil)
//
//let twentyNode = Node(value: 20, leftChild: nil, rightChild: nil)
//let fourteenNode = Node(value: 14, leftChild: nil, rightChild: nil)
//
//let elevenNode = Node(value: 11, leftChild: twentyNode, rightChild: fourteenNode )
//
//let tenrootNode = Node(value: 10, leftChild: fiveNode, rightChild: elevenNode)
//
//func search (node: Node?, searchValue: Int)-> Bool {
//
//    if node == nil {
//        return false
//    }
//
//    if node?.value == searchValue {
//        return true
//    } else {
//        return search(node: node?.leftChild, searchValue: searchValue) || search(node: node?.rightChild, searchValue: searchValue)
//    }
//
//
//
//
//}
//
////search(node: tenrootNode, searchValue: 30)
//let numbers = [1,2,2,3,3,4,5,6,7,7,8,10,10]
//let tags = ["Animal", "Food", "Movies", "Animal", "Food", "Swift", "Swift" , "Swift"]
//
//let reduce = tags.reduce(into: [:], {$0 [$1, default: 0] += 1 })
//let sort = reduce.sorted(by: {$0.value > $1.value  })
//
//
//let map = sort.map({$0.key})
//
//print(map)


//let numbers : [Int] = []
//
//for _ in 0..<20{
//    let random = Int(arc4random_uniform(UInt32(1000)))
//    print(numbers[random])
//
//}


//func filterNumber (array: [Int], value : Int )->[Int]{
//
//    var array2: [Int] = []
//
//    for num in array {
//        if num > value {
//           array2.append(num)
//
//        }
//
//    }
//
//
//
//    return array2
//}


var filter = filterNumber(array: [1,2,3,4,5,6,7,8,9,10] , value: 5)
print(filter)
