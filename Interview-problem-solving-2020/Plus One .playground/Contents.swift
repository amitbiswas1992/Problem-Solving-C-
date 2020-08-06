import UIKit

func plusOne(_ digit: [Int]) -> [Int]{
    
    var newArray = digit
    
    for i in (0..<digit.count).reversed() {
        if digit[i] < 9 {
            newArray[i] += 1
            return newArray
        }
        
       newArray[i] = 0
    }
    
    newArray.append(1)
    newArray = newArray.reversed()
    
    return newArray
}


plusOne([2,5])
