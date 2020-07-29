import UIKit

func maxProfit(_ price: inout [Int]) -> Int {
  
    if price.count == 0  {
        return 0
    }
    var profit = 0
    
    for i in 1..<price.count {
        if price[i] > price[i - 1] {
            profit = profit + (price[i] - price[i - 1])
            
        }
    }
    
  return profit
}
var n = [7,1,5,3,6,4]
print (maxProfit(&n))


