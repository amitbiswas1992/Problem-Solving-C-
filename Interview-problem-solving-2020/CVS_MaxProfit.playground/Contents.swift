import UIKit

func maxProfit(_ prices: [Int]) -> Int {
     
  guard prices.count > 1 else {
      return 0
  }
     
     var currentProfit = 0
     var maxProfit = 0
     
     for i in 1..<prices.count {
         currentProfit = currentProfit + prices[i] - prices[i - 1 ]
         currentProfit = max(0, currentProfit)
         maxProfit = max(currentProfit, maxProfit)
     }
    
    
     return maxProfit
 }


// 4,7,8,5,9 , 3,11
