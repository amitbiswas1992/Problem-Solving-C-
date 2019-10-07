class Solution {

    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty {
            return ""
        }

        let first = strs[0]
        let start = first.startIndex
        var end = first.startIndex

        while strs.reduce(true, { $0 && $1.endIndex != end && first[end] == $1[end] }) {
            end = first.index(end, offsetBy: 1)
        }

        return first[start..<end]
    }
}
