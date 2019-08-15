class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {

        if s.sorted() == t.sorted() {
            return true
        }
        return false
    }
} 
