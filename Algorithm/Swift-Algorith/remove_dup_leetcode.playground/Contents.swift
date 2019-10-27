import UIKit
import Foundation


    func removeDuplicates( nums: inout [Int]) -> Int {
      
        let set = Set<Int>(nums)
        nums = Array(set)
        nums.sort()
        return nums.count
    

}

var arr = [0, 1, 2, 1, 2]

print(removeDuplicates(nums: &arr))
