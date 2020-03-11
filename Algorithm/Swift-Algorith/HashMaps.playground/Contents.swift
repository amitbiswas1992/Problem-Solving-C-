import UIKit


class Node {
    var value : Int
    var leftChild : Node?
    var rightChild: Node?
    
    
    init (value : Int, leftChild: Node? , rightChild: Node?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
    
    
    let oneNode         = Node(value: 1, leftChild: nil , rightChild: nil)
    let fiveNode        = Node(value:5 , leftChild: oneNode, rightChild: nil)
    let elevenNode      = Node(value: 11, leftChild: nil, rightChild: nil)
    let twentyNode      = Node(value: 20, leftChild:nil , rightChild:nil )
    let fourteenNode    = Node(value: 14, leftChild: elevenNode, rightChild: twentyNode )
    let tenRootNode     = Node(value: 10, leftChild: fiveNode , rightChild: fourteenNode)
    
    func search(searchValue: Int, node: Node?) -> Bool {
        
        if node == nil {
            return false
        }
        
        if node?.value == searchValue {
            return true
        }else {
            return search(searchValue: searchValue, node: node?.leftChild) || search(searchValue: searchValue, node: node?.rightChild)
        }
        
    }

    search(searchValue: 11, node: tenRootNode)

    let list = [10,25,14,11,3,26,11]
    let indexSearch = list.index(where: {$0 == 3})

