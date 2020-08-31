import UIKit


func countPrime(_ n: Int ) -> Int {
 
    guard n > 2 else {
        return 0
    }
    var isPrime = Array(repeating: true , count : n )
    isPrime[0] = false
    isPrime[1] = false
    var count = 0
    
    for i in 2..<n {
       if isPrime[i] == false {
            continue
        }
        count += 1
        var index = i * i
        
        while index < n {
            isPrime[index] = false
            index += i
        }
        
    }
    
    for i in 2..<n {
        if isPrime[i] {
            print(i)
        }
    }
    
    return count
}

countPrime(30)
