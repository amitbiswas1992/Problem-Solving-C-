import UIKit

var array = [1,2,3,4]
// way 1
//(array[0],array[1]) = (array[1],array[0])
// way 2
array.swapAt(0, 1)

print(array)


func moveZero(_ nums: inout [Int]) {
   
    var g = 0
    for i in 0..<nums.count {
        if nums[i] != 0 {
            nums.swapAt(i, g)
            g += 1
        }
    }
    
}
var n = [5,0,8,0,6]
moveZero(&n)

//func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
//    var count = 0
//
//    for index in m..<m+n {
//        nums1[index] = nums2[count]
//        count += 1
//    }
//
//    nums1 = nums1.sorted()
//}

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {

     var j = 0
    
    for i in m..<m+n {
        nums1[i] = nums2[j]
        j += 1
    }
    
    nums1 = nums1.sorted()

}

var maping = [1,2,3,nil,4,5]

let arrayOfString = maping.compactMap({ $0 }).map(String.init)
print(arrayOfString)




