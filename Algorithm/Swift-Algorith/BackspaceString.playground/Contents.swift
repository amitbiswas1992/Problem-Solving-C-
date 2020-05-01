import UIKit

func backspaceString(_ S: String, _ T: String ) -> Bool {
    
    var str1: [Character] = []
    var str2: [Character] = []
    
    for i in S {
        if i == "#" {
            if str1.count > 0 {
                str1.removeLast()
            } else {
                str1.append(i)
            }
        }
    }
    for i in T {
        if i == "#" {
            if str2.count > 0 {
                str2.removeLast()
            } else {
                str2.append(i)
            }
        }
    }
    
    return str1 == str2

}

backspaceString("ab#c", "ad#c#")
