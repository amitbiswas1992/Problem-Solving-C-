import UIKit

func minSubArrayLen(_ nums: [Int], _ target: Int) -> Int {
    
    var left = 0
    var currentSum = 0
    var minLength = Int.max
    
    for right in 0..<nums.count {
        
        currentSum += nums[right]
        
        while currentSum >= target {
            minLength = min(right - left + 1, minLength)
            currentSum -= nums[left]
            left += 1
            
        }
    
    }
    
    
    return minLength == Int.max ? 0 : minLength
}

var array = [1,4,4]

print(minSubArrayLen(array, 4))

