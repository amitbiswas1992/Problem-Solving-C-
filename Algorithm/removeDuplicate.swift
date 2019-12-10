import Foundation 

    func removeDuplicates( nums:  [Int]) -> Int {
       var s = Set(nums)
        nums = Array(s).sorted()
        return s.count
    }

var arr: [Int] = [2,2,4,4,5,5]
removeDuplicates(nums: arr 
