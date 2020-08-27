import UIKit


func add(a: String, b: String) -> String {
    var ca = Array(a)
    var cb = Array(b)
    
    var ans: [Int] = []

    var i = a.count - 1
    var j = b.count - 1
    var hand = 0

    while i >= 0 || j >= 0 || hand > 0 {
        var da = 0
        var db = 0
        if i >= 0 {
            da = Int(String(ca[i]))!
        }
        if j >= 0 {
            db = Int(String(cb[j]))!
        }
        da += db
        da += hand
        ans.append(da % 10)
        hand = da / 10
        i -= 1
        j -= 1
    }
    ans.reverse()
    
    var res = ""
    for i in ans {
        res += String(i)
    }
    return res
}

let a = "123333333333333333333333333333"
let b = "45676563456034658073445"
print(add(a: a, b: b))

