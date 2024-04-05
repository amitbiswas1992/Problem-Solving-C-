import UIKit

func mergeTwoSortedArray(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    
    var last = m + n - 1
    var m = m - 1
    var n = n - 1
    
    while n >= 0 && m >= 0 {
        if nums1[m] > nums2[n] {
            nums1[last] = nums1[m]
            m -= 1
        }
        else {
            nums1[last] = nums2[n]
            n -= 1
        }
        last -= 1
    }
    
    while n >= 0 {
        nums1[last] = nums2[n]
        n -= 1
        last -= 1
    }
    
}

var a1 = [1,2,3,0,0,0], a2 = [2,5,6]
mergeTwoSortedArray(&a1, 3, a2, 3)
