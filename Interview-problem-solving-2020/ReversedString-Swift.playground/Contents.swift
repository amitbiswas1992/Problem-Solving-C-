import UIKit

func reverseString( s: inout [Character])  {
    
    var j = s.count - 1
    for i in 0..<s.count {
        var temp = s[j]
        s[j] = s[i]
        s[i] = temp
        j = j - 1
        if i >= j {
            break
        }
    }
    
}
var s1: [Character] = ["h","e","l","l","o"]
reverseString(s: &s1)
