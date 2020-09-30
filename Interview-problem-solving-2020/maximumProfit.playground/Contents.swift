import UIKit

func maxiProfit(_ prices: [Int]) -> [Int ]{
    
    guard prices.count > 1 else {
        return []
    }
    
    var currentProfit = 0
    var maxProfit = 0
    var returnArray : [Int] = []
    
    for i in 1..<prices.count {
        
        currentProfit = currentProfit + prices[i] - prices[i - 1]
        currentProfit = max(0, currentProfit)
        maxProfit = max (currentProfit, maxProfit)
        
        returnArray.append(maxProfit)
    }
    
    
    return returnArray
}


var array = [1500, 1550, 1400, 1509, 1450, 1490, 1530, 1600, 40, 30, 250]

maxiProfit(array)


func minCost(cost: [[Int]]) -> Int {
    let rows = cost.count
    var dp = [[Int]]()
    let temp = [0, 0, 0]
    for _ in 0..<rows {
        dp.append(temp)
    }
    dp[0][0] = cost[0][0]
    dp[0][1] = cost[0][1]
    dp[0][2] = cost[0][2]
    for i in 1..<rows {
        dp[i][0] = cost[i][0] + min(dp[i - 1][1], dp[i - 1][2])
        dp[i][1] = cost[i][1] + min(dp[i - 1][0], dp[i - 1][2])
        dp[i][2] = cost[i][2] + min(dp[i - 1][1], dp[i - 1][0])
    }
    return min(dp[rows - 1][0], min(dp[rows - 1][1], dp[rows - 1][2]))
}
