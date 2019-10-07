class Solution {
    func intToRoman(_ num: Int) -> String {
        var result = ""
        var rest = num
        let values = [1000,900,500,400,100,90,50,40,10,9,5,4,1]
        let roman =  ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]
        var currentIndex = 0
        while rest > 0 {
            while rest/values[currentIndex] > 0 {
                result.append(roman[currentIndex])
                rest -= values[currentIndex]
            }
            currentIndex += 1
        }
        return result
    }
}
