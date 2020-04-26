import UIKit

func groupAnagrams(_ strs: [String]) -> [[String]] {
    
    var dic = [String: [String]]()
    
    for str in strs {
       var sortedString = String(str.sorted())
        if dic[sortedString] == nil {
            dic[sortedString]  = [str]
            
        } else {
            dic [sortedString]?.append(str)
        }
    }
    return Array(dic.values)
    
}
