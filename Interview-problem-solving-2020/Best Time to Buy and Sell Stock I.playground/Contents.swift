import UIKit
// Buy and Sell stock I

    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
        
        var maxSoFar = 0
        var currentSoFar = 0
        
        for i in 1..<prices.count {
            currentSoFar = currentSoFar + prices[i] - prices[i-1]
            currentSoFar = max(0,currentSoFar)
            maxSoFar = max(currentSoFar, maxSoFar)
        }
        return maxSoFar

    }

//[7,1,5,3,6,4]


// Buy and Sell stock II

func maxProfit2(_ prices: [Int]) -> Int {

    guard prices.count > 1 else {
        return 0
    }
    
  var profit = 0
    for i in 1..<prices.count {
        if prices[i] > prices[i - 1] {
            profit = profit + ( prices[i] - prices[i - 1] )
        }
        
    }
    
     return profit
}
