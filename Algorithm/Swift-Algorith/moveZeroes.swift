func moveZeroes(_ nums: inout [Int] ){

    let numSize = nums.count
    for i in 0..<numSize{
        if nums[i] == 0 {
            var nonZeroIndex = -1
            for j in (i+1)..<numSize{
                if nums[j] != 0 {
                    nonZeroIndex = j
                    break
                }
            }
            if nonZeroIndex == -1 {
                break
            }

            while nonZeroIndex > i {
                nums.swapAt(nonZeroIndex, nonZeroIndex - 1 )
                nonZeroIndex -= 1
            }
        }
    }

}
var array = [ 0,2,4,0,7,0,3,9,3,]
moveZeroes(&array)
