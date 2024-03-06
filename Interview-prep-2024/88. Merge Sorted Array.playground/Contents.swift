import UIKit

func merge(  nums1: inout [Int], _ m: Int,  nums2: inout [Int], _ n: Int ) {
    
    var last = m + n - 1
    var m = m - 1
    var n = n - 1
    
    
    while m >= 0 && n >= 0 {
        if nums1[m] > nums2[n] {
            nums1[last] = nums1[n]
            n -= 1
        }
        else {
            nums1[last] = nums2[m]
            m -= 1
        }
        last -= 1
    }
    
    while n >= 0 {
        nums1[last] = nums2[n]
        n -= 1
        last -= 1
    }
}

var nums5 = [1, 2, 3, 0, 0, 0]
var nums6 = [2, 5, 6]
merge(nums1: &nums5, 3, nums2: &nums6, 3)
