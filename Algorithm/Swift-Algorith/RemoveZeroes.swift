class Solution {

func moveZeroes(_ nums: inout [Int]) {
    var flag: Bool
    while true {
        flag = false
        for i in 0..<nums.count - 1{
            if (nums[i] == 0  && nums[i + 1] != 0){
                nums.swapAt(i, i + 1)
                flag = true
            }
        }
        if (flag == false) {
            break
        }
    }
}

}
