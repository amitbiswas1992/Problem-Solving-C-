import UIKit

//Sliding Window
//Two Pointers
//Back Tracking
//Bottom Up DP
//Union-Find
//Topological Sort
//BFS, DFS and when to use them
//N-ary TreeSliding Window
//Two Pointers
//Back Tracking
//Bottom Up DP
//Union-Find
//Topological Sort
//BFS, DFS and when to use them
//N-ary Tree

func isHappy(n: Int) -> Bool {
    var result = n
    
    while result != 1 && result != 4 {
        var currentNumber = result
        result = 0
        while currentNumber > 0 {
            let currentDigit = currentNumber % 10
            result += currentDigit * currentDigit

            currentNumber /= 10
        }
    }

    return result == 1
}

isHappy(n: 19)
