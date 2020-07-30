import UIKit
// Input: nums = [1,2,3,4,5,6,7], k = 3

func rotate(_ nums: inout [Int], _ k: Int) {
    
    var rotateTimes = k % nums.count
    let staticNums = nums
    
    for i in 0..<nums.count {
        var from = i - rotateTimes
        
        if from < 0 {
            from += nums.count
        }
        nums[i] = staticNums[from]
        
    }
    
}

var n = [1,2,3,4,5,6,7]
rotate(&n, 2)



