import UIKit

let numbers = [4,6,7,32,14,21,20,800,43]

func quickSort (nums: [Int]) -> [Int] {
    
    var less: [Int] = []
    var equal: [Int] = []
    var high: [Int] = []
    
    if nums.count > 1 {
        var pivot = nums[0]
        
        for i in nums {
            if i < pivot {
                less.append(i)
            }
            if i > pivot {
                high.append(i)
            }
            if i == pivot {
                equal.append(i)
            }
        }
        return quickSort(nums: less) + equal + quickSort(nums: high)
        
    } else {
        return nums
    }
}

quickSort(nums: numbers)
