import UIKit

func maxProfit(_ prices: [Int]) -> Int {
    guard prices.count > 1 else {
        return 0
    }
    var currentProfit = 0
    var maxProfit = 0
    
    var arr = [0, 0]
    var minprice = 1000_000_000
    var minpriceIdx = 0
    var maxprofit = 0
    
    for i in 0..<prices.count {
        if prices[i] < minprice {
            minprice = prices[i]
            minpriceIdx = i
        } else if (prices[i] - minprice) > maxprofit {
            maxprofit = prices[i] - minprice;
            arr[0] = minpriceIdx
            arr[1] = i
        }
    }
    // arr contains indexes
    return maxProfit
}
