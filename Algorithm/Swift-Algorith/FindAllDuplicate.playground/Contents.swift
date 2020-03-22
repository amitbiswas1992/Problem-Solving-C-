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

func moVeZero (_ nums: inout [Int]) {
  
    var g : Int = 0
    
    for i in 0..<nums.count {
      
        if nums[i] != 0 {
            nums.swapAt(g, i)
            g += 1
        }
    }
   
    
    
}

var arr = [0,1,0,3,12]
moVeZero( &arr)




//func reverse(_ x: Int) -> Int {
//let absolute = abs(x)
//
//let string = String(absolute)
//let reversedString = String(string.reversed())
//let res = Int32(reversedString)
//
//guard var result = res else
//{
//    return 0
//}
//
//if x < 0 {
//
//    result = result * -1
//}
//return Int(result)
//
//}
