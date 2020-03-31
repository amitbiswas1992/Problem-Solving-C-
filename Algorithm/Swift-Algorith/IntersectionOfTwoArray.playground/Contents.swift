import UIKit


func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {

    var resultArray = [Int]()
    for num in nums1 {
        if nums2.contains(num) {
            if !resultArray.contains(num) {
                resultArray.append(num)
            }
        }
    }
    return resultArray
}

var l = intersection([4,9,5], [9,4,9,8,4])
print(l)
