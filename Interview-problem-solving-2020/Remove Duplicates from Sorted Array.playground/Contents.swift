import UIKit

func removeDuplicates(_ nums: inout [Int]) -> Int {
  var set = Set<Int>(nums)
    nums = Array(set)
    
    nums.sort()
    return nums.count

}

var n = [1,1,2]
removeDuplicates(&n)
