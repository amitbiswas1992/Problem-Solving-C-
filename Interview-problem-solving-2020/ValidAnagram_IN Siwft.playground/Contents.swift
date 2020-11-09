import UIKit

//func isAnagram(_ s: String, _ t: String) -> Bool {
//
//    if s.count != t.count {
//        return false
//    }
//
//    var count_s = Array(repeating: 0, count: 26)
//    var count_t = Array(repeating: 0, count: 26)
//
//    var offset = Character("a").asciiValue!
//
//    for i in s {
//
//        count_s[Int(i.asciiValue! - offset)] += 1
//
//    }
//
//    for i in t {
//        count_t[Int(i.asciiValue! - offset)] += 1
//    }
//
//return count_s == count_t
//}
//
//
//
//isAnagram("xyz", "yzxr")


func findDuplicate(_ nums: [Int]) -> [Int] {
    
    var newArray : [Int] = []
    var array = nums
   
    for i in 0..<nums.count {
        
            var index = abs(array[i]) - 1
        
        if array[index] < 0 {
            newArray.append(index + 1)
        }
    
        array[index] = -array[index]

}
return newArray
}

 
findDuplicate([4,5,4,6,7,8,7])
