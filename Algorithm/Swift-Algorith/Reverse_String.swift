//import Foundation 
//
//func reverseString(_ s: inout [Character]) -> [Character]{
//	var j = s.count - 1
//	for i in 0..<s.count{	
//		let temp = s[i]
//		s[i] = s[j]
//		s[j] = temp
//		j = j - 1
//		if i >= j{
//			break
//		}
//	}
//	return s
//}
//
//var a : [Character] = ["1", "2", "3", "4", "5", "6"]
//
//print (reverseString(&a))

import Foundation 

func reverseS(_ s: inout [Character]){
	var j = s.count - 1 
	for i in 0..<s.count {
		let temp = s[i]
		s[i] = s[j]
		s[j] = temp
		
		j = j - 1
		if i >= j{
			break
		}
	}
	
}

var a : [Character] = ["2", "3", "4", "8"]
reverseS(&a)
print(a)












