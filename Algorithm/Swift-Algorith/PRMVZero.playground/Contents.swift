import UIKit

class Node {
    var  value : Int
    var leftChild : Node?
    var rightChild: Node?
    
    init(value: Int, leftChild: Node?, rightChild: Node?){
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

//       10
//      /  \
//     5   14
//    /   /  \
//   3   11   20

let threeNode = Node(value: 3, leftChild: nil, rightChild: nil)

let fiveNode = Node(value: 5, leftChild: threeNode, rightChild: nil)
let elevenNode = Node(value: 11, leftChild: nil, rightChild: nil)
let tweentyNode = Node(value: 20, leftChild: nil, rightChild: nil)
let fourteenNode = Node(value:14, leftChild:  elevenNode, rightChild: tweentyNode)
let tenNode = Node(value: 10, leftChild: fiveNode, rightChild: fourteenNode)

func recursiveSearch(searchValue: Int, node: Node? )-> Bool {
    if node == nil {
        return false
    }
    
    if node?.value == searchValue {
        return true
    } else {
        
        return recursiveSearch(searchValue: searchValue, node: node?.leftChild) || recursiveSearch(searchValue: searchValue, node: node?.rightChild)
    }
    
    return false
}

recursiveSearch(searchValue: 20, node: tenNode)
