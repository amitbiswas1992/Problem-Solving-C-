func firstUniqChar(_ s: String) -> Int {
	var charCount = Array(repeating: 0, count: 26) //1 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 
	var cs = Array (s) // ['a', 'm', 'i', 't', 'b', 'i', 's', 'w', 'a', 's']
	//abcdefghijklmnopqrstuvwxyz
	for i in 0..<cs.count{
		charCount[Int(cs[i].asciiValue! - 97)] += 1
	}
	for i in 0..<cs.count{
		if charCount[Int(cs[i].asciiValue! - 97)] == 1{
			return i
		}
	}
	return -1
}

var st : String = "amitbiswas"

print (firstUniqChar (st))