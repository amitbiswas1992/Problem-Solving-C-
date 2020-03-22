import UIKit
func findDuplicate(_ nums: [Int]) -> Int {
    var set = Set<Int>()
    for num in nums {
        if set.contains(num)
        {
            return num
            
        }
        set.insert(num)
    }
    return 0
}
