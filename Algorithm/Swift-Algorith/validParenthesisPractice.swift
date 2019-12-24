import Foundation

func isValid(_ s: String) -> Bool {
	struct Stack{
		var characterArray: [Character] = []
		
		
		func size() -> Int {
			return characterArray.count
		}
		
		mutating func push(_ val: Character){
			characterArray.append(val)
		}
		 
	
		
		mutating func pop(){
			if characterArray.count > 0{
				characterArray.removeLast()
			}
		}
		
		mutating func top() -> Character{
			if characterArray.count > 0{
				return characterArray.last!
			}
			return "*"
		}
	}
	
}