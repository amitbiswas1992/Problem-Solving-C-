import UIKit

func movingZeroes(_ nums: inout [Int]){
   
    var numSize = nums.count
    for i in 0..<numSize{
        if nums[i] == 0 {
            var nonZeroIndex = -1
            for j in (i+1)..<numSize{
                if nums[j] != 0 {
                    nonZeroIndex = j
                    break
                }
            }
            
            if nonZeroIndex == -1 {
                break
            }
            while nonZeroIndex > 1 {
                nums.swapAt(nonZeroIndex, nonZeroIndex - 1 )
                nonZeroIndex -= 1
                
            }
        }
        
        
    }
    
    
}
var araay = [0,3,5,0,6,9,0,10,0,0,28,87]
movingZeroes(&araay)
