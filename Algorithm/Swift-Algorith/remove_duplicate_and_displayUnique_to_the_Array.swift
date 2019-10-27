import Foundation
import UIKit

func removeDuplicate(_ nums: inout [Int] )-> Int {

let mySet = Set<Int>(nums)

nums = Array(mySet)

nums.sort()

return nums.count


}
var array = [1,1,2,3,3,4,4,4]
removeDuplicate(nums: array)
