import UIKit

var number = [1,2,4,5,6,7,8,11,13,17,20,25]

func binarySearch(searchValue: Int, array: [Int]) -> Bool {
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        var midIndex = (leftIndex + rightIndex) / 2
        var midValue = array[midIndex]
        
        if searchValue == midValue {
            return true
        }
        
        if searchValue < midValue {
            rightIndex = midIndex - 1
        }
        
        if searchValue > midValue {
            leftIndex = midIndex + 1
        }
        
    }

    return false
}

binarySearch(searchValue: 8, array: number)

