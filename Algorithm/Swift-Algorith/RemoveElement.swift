class Solution {

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {

if(nums.count == 0){
return 0
}

var i = 0

for j in 0..<nums.count {
if(nums[j] != val){
nums[i] = nums[j]
i += 1
}

}
return i

    }
}
