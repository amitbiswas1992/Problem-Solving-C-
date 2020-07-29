import UIKit

func containsDuplicate(_ nums: [Int]) -> Bool {
    
    var set = Set<Int>(nums)
    
    if set.count == nums.count {
        return false
    } else {
         return true
    }
    
   
}

containsDuplicate([1,1,2,2,5])

