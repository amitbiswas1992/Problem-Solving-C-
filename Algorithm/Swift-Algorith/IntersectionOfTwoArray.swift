IS Pclass Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {

     var return_array: [Int] = []

     var new_array_for_nums_2: [Int] = nums2

        for i in nums1 {
            //i
            for j in 0..<new_array_for_nums_2.count{

                if i == new_array_for_nums_2[j] {
                    return_array.append (i)
                    new_array_for_nums_2[j] = -12345
                    break
                }

            }


        }

        return return_array

    }
}
