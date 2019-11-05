import UIKit

// Binary Search Algorithm


func rotate(_ nums: inout [Int], _ k: Int) {
    var n = nums.count
    var rem_k = 0
    
    var h : Int?
    
    
 

    if (n != 0){
        rem_k = k % n
    }
    var a = Array(repeating:0, count:n)
    for i in 0 ..< n {
        var nxt = i +rem_k
        if (nxt >= n){
            nxt -= n
        }
        a[nxt] = nums[i]
    }
    for i in 0 ..< n {
        nums[i] = a[i]
    }
}
 

k = 3
nums = [3,4,5,1,2]
a = [3,4,5,1,2]

rotate(&myNUm, 1)






