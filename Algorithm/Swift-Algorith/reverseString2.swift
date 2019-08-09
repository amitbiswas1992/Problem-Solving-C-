class Solution {
    func reverseStr(_ s: String, _ k: Int) -> String {
        var arr = Array(s.characters)
        var index = 0

        while index < arr.count {
            reverse(&arr, index, min(index + k - 1, arr.count - 1))
            index += 2 * k
        }
        return String(arr)
    }

    func reverse(_ arr: inout [Character], _ startIndex: Int, _ endIndex: Int) {
        var start = startIndex
        var end = endIndex
        while start <= (startIndex + endIndex) / 2 {
            (arr[start], arr[end]) = (arr[end], arr[start])
            start += 1
            end -= 1
        }
    }
}
