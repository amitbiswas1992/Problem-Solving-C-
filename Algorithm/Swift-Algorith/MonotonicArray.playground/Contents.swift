import UIKit

class Solution {
    func isMonotonic(_ A: [Int]) -> Bool {
        let a = A.sorted()
        let aReverse = Array(a.reversed())
        return a == A || aReverse == A
    }
}
