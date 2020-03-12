import UIKit

func moveZeroes(_ nums: inout [Int]) {
  
    var g: Int = 0
    for i in 0..<nums.count {
        if nums[i] != 0 {
            nums.swapAt(g, i)
            g += 1
        }
    }
}

var arr = [0,1,0,3,12]
moveZeroes(&arr)
