class Solution {

func plusOne(_ digits: [Int]) -> [Int] {
    var returnArray = digits
    for i in (0..<digits.count).reversed(){
        if (digits[i] < 9){
            returnArray[i] += 1
            return returnArray
        }
        returnArray[i] = 0
    }
    returnArray.append(1)
    returnArray = returnArray.reversed()
    return returnArray
}
}
