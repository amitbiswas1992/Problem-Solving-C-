import UIKit

func fibonacci(_ num: Int) -> Int {
    
    if num <= 0 {
        return 0
    }
    if num == 1 {
        return 1
    }
    
    var N1 = 1
    var N2 = 0
    
    for i in 1..<num {
        var temp = N1
        
        N1 = N1 + N2
        N2 = temp
    
    }
    
    return N1
}
fibonacci(5)


