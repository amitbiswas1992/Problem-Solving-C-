import UIKit

//func findDuplicates (_ nums : [Int]) -> [Int] {
//    var newArray : [Int] = []
//    var arr = nums
//
//    for i in 0..<arr.count {
//         var index = abs(arr[i]) - 1
//
//        if arr[index] < 0 {
//            newArray.append(index + 1)
//        }else {
//            arr[index] = -arr[index]
//        }
//
//
//    }
//    return newArray
//}
//findDuplicates([4,3,2,7,8,2,3,1])


// 1<=a[i]<=n

func findDuplicate (_ nums: [Int]) -> [Int] {
    
    var array = nums
    var resultArray: [Int] = []
    
    for i in 0..<array.count {
        var index = abs (array[i]) - 1
        
        if array[index] < 0 {
            resultArray.append(index + 1 )
        }
        else {
            array[index] = -array[index]
        }
    }
    
    return resultArray
}

findDuplicate([1,2,2,1,5,4,4,8,7,7])
