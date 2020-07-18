import UIKit

func maxProfit(_ prices: [Int]) -> Int {
       if (prices.count == 0){
           return 0
       }
       var sum = 0
       for i in  1..<prices.count{
           if (prices[i] > prices[i - 1]){
               sum = sum + (prices[i] - prices[i - 1])
           }
       }
       return sum
   }

// [7,1,5,3,6,4]


