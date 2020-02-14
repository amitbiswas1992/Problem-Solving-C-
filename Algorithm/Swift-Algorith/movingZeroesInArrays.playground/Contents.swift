import UIKit

func movingZero(_ nums: inout [Int]) {
   
    var numSize = nums.count
    for i in 0..<numSize{
        if nums[i] == 0 {
            var nonIndexZero = -1
            for j in (i+1)..<numSize{
               if  nums[j] != 0 {
                    nonIndexZero = j
                    break
                }
            }
            
            if nonIndexZero == -1 {
                break
            }
            
            while nonIndexZero > i {
                nums.swapAt(nonIndexZero, nonIndexZero - 1 )
                nonIndexZero -= 1
            }
        }
        
    }

}
var araay = [0,3,5,0,6,9,0,10,0,0,28,87]
movingZero(&araay)
