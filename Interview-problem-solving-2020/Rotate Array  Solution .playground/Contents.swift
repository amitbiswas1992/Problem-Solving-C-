import UIKit
// Input: nums = [1,2,3,4,5,6,7], k = 3

func rotate(_ nums: inout [Int], _ k: Int) {
    
    var rotateTimes = k % nums.count
    var staticArray = nums
    
    for i in 0..<nums.count {
        var from = i - rotateTimes
        if from < 0 {
            from += nums.count
        }
        
        nums[i] = staticArray[from]
    }
    
    
    
}

var n = [1,2,3,4,5,6,7,9]
rotate(&n, 4)



