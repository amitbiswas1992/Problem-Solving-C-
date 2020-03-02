import UIKit

func moveZero(_ nums: inout [Int]) {
    
    let numeSize = nums.count
    for i in 0..<numeSize{
        if nums[i] == 0 {
            var nonIndexZero = -1
            for j in (i+1)..<numeSize{
               if nums[j] != 0 {
                nonIndexZero = j
                break
                    
                }
            }
            
            if nonIndexZero == -1 {
                break
            }
            
            while nonIndexZero > 1 {
                nums.swapAt(nonIndexZero, nonIndexZero - 1 )
                nonIndexZero -= 1
            }
        }
        

    }

    
}

var arr = [1,0,4,9,0,3]

moveZero(&arr)
