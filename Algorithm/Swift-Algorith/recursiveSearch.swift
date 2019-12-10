import Foundation

//         10
//        /  \
//       5    14
//      /    /  \
//     1    11   20
//
class Node {

	let value : Int
	let leftChild : Node?
	let rightChild: Node?


	init(value : Int , leftChild: Node?, rightChild: Node?) {
		self.value = value
		self.leftChild = leftChild
		self.rightChild = rightChild
	}

}

// Left Nodes
let oneNode = Node(value: 1, leftChild: nil, rightChild: nil)
let fiveNode = Node(value: 5, leftChild: oneNode, rightChild: nil)

//Right nOdes

let elevenNode = Node(value: 11, leftChild: nil, rightChild: nil)
let twentyNode = Node(value: 20, leftChild: nil, rightChild: nil)
let fourteenNode = Node(value: 14, leftChild: elevenNode, rightChild: twentyNode)

// Root Node
let tenRootNode = Node(value: 10, leftChild: fiveNode, rightChild: fourteenNode)


func search(node : Node? , searchValue: Int )-> Bool{

	if node?.value == nil {
		return false
	}
	
	if node?.value == searchValue {

		return true

	}else {

		return search(node: node?.leftChild, searchValue: searchValue) || search(node: node?.rightChild, searchValue: searchValue)
	}


//	return false
}

print(search(node: tenRootNode, searchValue: 65))