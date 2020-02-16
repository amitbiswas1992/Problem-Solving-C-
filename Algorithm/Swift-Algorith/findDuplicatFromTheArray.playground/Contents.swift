import UIKit

func findDuplicate(_ nums: [Int])->[Int]{
    
    var arr = nums.sorted()
    var result : [Int] = []
    var current = -11232324
    
    for i in arr {
        if i == current {
            result.append(i)
        }
        else {
            current = i
        }
    }

      return result
}
findDuplicate([10,5,2,10,7,3,3,5,9])
