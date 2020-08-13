import UIKit

func findDuplicates (_ nums : [Int]) -> [Int] {
    
    var newArray: [Int] = []
    var arr = nums
    
    for i in 0..<arr.count {
        var index = abs(arr[i]) - 1
        if arr[index] < 0 {
            newArray.append(index + 1)
        } else {
            arr[index] = -arr[index]
        }
        
    }
    
    
return newArray
}

findDuplicates([2,3,4,5,5,6,6])












