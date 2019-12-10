class Solution {
	func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
		var returnArray = [Int]()
		for i in 0..<nums.count{
			for j in (i + 1)..<nums.count{
				if nums[i] + nums[j] == target{
					returnArray.append (i)
					returnArray.append (j)
				}
			}
		}
		return returnArray
	}
}