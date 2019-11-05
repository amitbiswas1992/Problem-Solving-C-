class Solution {

func rotate(_ nums: inout [Int], _ k: Int) {
    var n = nums.count
    var kk = k
    if (n != 0){
        kk = kk % n
    }
    var a = Array(repeating:0, count:n)
    for i in 0 ..< n {
        var nxt = i + kk
        if (nxt >= n){
            nxt -= n
        }
        a[nxt] = nums[i]
    }
    for i in 0 ..< n {
        nums[i] = a[i]
    }
}
}
